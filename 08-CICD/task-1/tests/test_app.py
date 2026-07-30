import unittest
from app import say_hello


class TestHello(unittest.TestCase):

    def test_say_hello(self):
        result = say_hello("DevOps")
        self.assertEqual(result, "Hello, DevOps!")


if __name__ == "__main__":
    unittest.main()
