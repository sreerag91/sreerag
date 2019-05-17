#!/bin/bash
func ()
{
  echo "First version of func ()."
}

func ()
{
  echo "Second version of func ()."
}

func   # Second version of func ().

exit $?

