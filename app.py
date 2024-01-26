# This is a demo copied direct from mpyc site

from mpyc.runtime import mpc

async def main():
    print(f'I am {mpc.pid}')
    await mpc.start()
    print(''.join(await mpc.transfer('Hello world!')))
    await mpc.shutdown()

if __name__ == '__main__':
    mpc.run(main())