#!/bin/bash
func ()
{
  echo "First version of func ()."
}

func1 ()
{
  echo "Second version of func ()."
}

func   # Second version of func ().
func1
exit $?

