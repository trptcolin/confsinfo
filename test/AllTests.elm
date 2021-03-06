module Main (..) where

import ConferenceTest
import Console
import DateFormatterTest
import ElmTest exposing (consoleRunner, Test, suite)
import FilteredTagTest
import ModelTest
import Task


tests : Test
tests =
  suite
    "All tests"
    [ ConferenceTest.tests
    , DateFormatterTest.tests
    , FilteredTagTest.tests
    , ModelTest.tests
    ]


port runner : Signal (Task.Task x ())
port runner =
  Console.run (consoleRunner tests)
