# Copyright (c) 2023 XXIV
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, andor sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
import spinners/raw

type
  Spinner* = object
    spinner: spinner_t
  Spinners* = spinner_spinners_t

proc `=destroy`(spinner: var Spinner) =
    spinner_clean(addr spinner.spinner)

proc new*(spinner: Spinners, message: string): Spinner =
  let spin = spinner_new(spinner, cstring(message))
  return Spinner(spinner: spin)

proc newWithTimer*(spinner: spinner_spinners_t, message: string): Spinner =
  let spin = spinner_new_with_timer(spinner, cstring(message))
  return Spinner(spinner: spin)

proc stop*(spinner: var Spinner) =
  spinner_stop(addr spinner.spinner)

proc stopWithSymbol*(spinner: var Spinner, symbol: string) =
  spinner_stop_with_symbol(addr spinner.spinner, cstring(symbol))

proc stopWithNewline*(spinner: var Spinner) =
  spinner_stop_with_newline(addr spinner.spinner)

proc stopWithMessage*(spinner: var Spinner, msg: string) =
  spinner_stop_with_message(addr spinner.spinner, cstring(msg))

proc stopAndPersist*(spinner: var Spinner, symbol: string, msg: string) =
  spinner_stop_and_persist(addr spinner.spinner, cstring(symbol), cstring(msg))
