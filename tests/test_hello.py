import unittest

from unittest import TestCase
from unittest.mock import patch
from unittest import mock

from src.hello_world import HelloWorld

class TestHelloWorld(TestCase):

    def test_says_hello(self):
        client = HelloWorld()
        result = client.say_hello()
        self.assertEqual('hello', result)
