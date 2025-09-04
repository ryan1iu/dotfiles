#!/bin/python3

import sys
import json
import os

STATE_FILE = os.path.expanduser('~/.config/polybar/Pomodoro/state.json')


def get_state():
    """获取状态信息"""
    state = {}
    try:
        with open(STATE_FILE, 'r') as f:
            # 使用Load函数将json文件加载为字典
            state = json.load(f)
    except FileNotFoundError:
        print('state file not found')
    except json.JSONDecodeError:
        print('not a valid json file')

    return state


def save_state(state):
    """将状态信息写回"""
    try:
        with open(STATE_FILE, 'w') as f:
            json.dump(state, f)
    except IOError as e:
        print(f'Error writing to JSON file: {e}')


def print_state():
    """打印状态"""
    state = get_state()
    remaintime = int(state['remaintime'])
    if not state['isrunning']:
        # 暂停状态
        print('%{F#13e014}󱫠%{F-}')
    elif remaintime == 0:
        print('%{F#13e014}󱫫%{F-}')
    else:
        print('%{F#13e014}󱫟%{F-}', remaintime // 60 + 1)


def main():
    state = get_state()
    remaintime = int(state['remaintime'])
    if len(sys.argv) < 2:
        # 定时更新状态，一秒更新一次
        if state['isrunning'] and remaintime > 0:
            # 如果是非暂停状态并且计时器没有结束
            state['remaintime'] = remaintime - 1
    if len(sys.argv) >= 2:
        # 暂停或重启定时器
        time = sys.argv[1]
        print(time)
        if not state['isrunning']:
            # 从暂停中恢复
            state['isrunning'] = True
        elif remaintime > 0:
            # 暂停
            state['isrunning'] = False
        else:
            # 重启
            state['remaintime'] = time
    save_state(state)
    print_state()


if __name__ == '__main__':
    main()
