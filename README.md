# Elixir Enum.reduce and throw/1 Unexpected Behavior

This example shows a subtle issue that can arise when using `throw/1` inside `Enum.reduce/3`.  While `throw/1` is useful for exceptional control flow, its behavior within `Enum.reduce/3` might not be immediately obvious to all Elixir developers. The `throw/1` halts the entire process instead of just exiting the `Enum.reduce/3` function.

## Problem
The provided code attempts to sum a list of numbers, stopping if the number 3 is encountered. However, the `throw/1` causes the entire process to terminate, rather than gracefully returning from the `Enum.reduce/3` call.