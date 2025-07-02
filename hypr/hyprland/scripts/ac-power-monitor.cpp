// File: ac_power_monitor.cpp
#include <chrono>
#include <fstream>
#include <iostream>
#include <string>
#include <thread>

constexpr const char *POWER_STATUS_FILE = "/sys/class/power_supply/ACAD/online";
constexpr const char *MONITOR_NAME = "eDP-1";
constexpr int POLL_INTERVAL_MS = 2000;

int read_power_state() {
  std::ifstream infile(POWER_STATUS_FILE);
  if (!infile.is_open()) {
    std::cerr << "Failed to open power status file\n";
    return -1;
  }
  int state = -1;
  infile >> state;
  return state;
}

void switch_refresh_rate(bool on_ac_power) {
  std::string rate = on_ac_power ? "120" : "60";
  std::string cmd = "hyprctl keyword monitor \"" + std::string(MONITOR_NAME) +
                    ",3072x1920@" + rate + ",auto,2\"";

  int rc = std::system(cmd.c_str());
  if (rc != 0) {
    std::cerr << "Failed to execute hyprctl command\n";
  }

  // Optional: notify
  std::string notify = "notify-send 'Hyprland' 'Switched to " + rate + "Hz'";
  std::system(notify.c_str());
}

int main() {
  int last_state = -1;
  while (true) {
    int current_state = read_power_state();
    if (current_state != last_state && current_state != -1) {
      switch_refresh_rate(current_state == 1);
      last_state = current_state;
    }
    std::this_thread::sleep_for(std::chrono::milliseconds(POLL_INTERVAL_MS));
  }

  return 0;
}
