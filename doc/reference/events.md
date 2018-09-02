# Events

::: tip usage
(import :std/event)
:::

Event-driven programming facilities.

```
(import :std/event)

;; exports:

  wait select sync
  ! !*
  never-evt always-evt
  wrap-evt handle-evt choice-evt
  sync-object?
  make-event event? event-e event-e-set!
```