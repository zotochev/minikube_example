import asyncio

import tornado.web
from tortoise import Tortoise

from db import Tournament


async def init():
    await Tortoise.init(
        db_url='mysql://root:123@mysql-service:3306/counter_db',
        modules={'models': ['db.Tournament']}
    )
    # Generate the schema
    await Tortoise.generate_schemas()


class MainHandler(tornado.web.RequestHandler):
    def get(self):
        tournament = Tournament(name='New Tournament')
        await tournament.save()

        tournaments = await Tournament.filter().all()
        self.write(f"Hello from kubernetes!\n"
                   f"Your database has {len(tournaments)} entries.")


def make_app():
    return tornado.web.Application([
        (r"/", MainHandler),
    ])


async def main():
    await init()
    app = make_app()
    app.listen(8888)
    await asyncio.Event().wait()


if __name__ == "__main__":
    asyncio.run(main())
