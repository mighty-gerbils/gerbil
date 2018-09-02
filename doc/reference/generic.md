# Generics

::: tip usage
(import :std/generic)
:::

Generic methods.

```
(import :std/generic)

;; exports:

  defgeneric defgeneric-type defmethod
  <t>  <void>  <null>  <boolean>
  <number>  <real>  <integer>  <fixnum>  <flonum>  <rational>  <complex>
  <string>  <symbol>  <keyword>
  <u8vector>  <vector>  <values>
  <pair>  <list>
  <procedure>
  <object>
  <hash-table>
  <thread>  <mutex>  <condvar>
  <port>  <input-port>  <output-port>
  <exception>
```