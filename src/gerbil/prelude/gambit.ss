;;; -*- Gerbil -*-
;;; © vyzo
;;; addition Gambit runtime symbols that are not part of <host-runtime>
package: gerbil
namespace: #f

(export #t)
(extern
  bit-count  bit-set? any-bits-set? all-bits-set?
  first-set-bit
  extract-bit-field test-bit-field? clear-bit-field
  replace-bit-field copy-bit-field

  display-exception-in-context display-procedure-environment
  display-continuation-environment
  display-continuation-dynamic-environment
  display-continuation-backtrace

  fxbit-count fxfirst-set-bit fxif fxlength
  fxquotient fxremainder
  fxwrap* fxwrap+ fxwrap-
  fxwrapabs fxwraparithmetic-shift fxwraparithmetic-shift-left
  fxwraplogical-shift-right fxwrapquotient
  fxabs fxsquare

  flabs flacos flasin flatan flceiling flcos
  flodd? fleven? flexp flexpt flfloor fllog flround flsin flsqrt fltan fltruncate
  flnumerator fldenominator

  foreign? foreign-tags foreign-address
  foreign-release! foreign-released?

  object->serial-number
  serial-number->object
  string=?-hash
  string-ci=?-hash
  eq?-hash
  eqv?-hash
  equal?-hash
  make-table
  table?
  table-length
  table-ref
  table-set!
  table-search
  table-for-each
  table->list
  list->table
  table-copy
  table-merge!
  table-merge

  s8vector?
  make-s8vector
  s8vector
  s8vector-length
  s8vector-ref
  s8vector-set!
  s8vector->list
  list->s8vector
  s8vector-fill!
  subs8vector-fill!
  s8vector-concatenate
  s8vector-copy
  s8vector-copy!
  s8vector-append
  subs8vector
  subs8vector-move!
  s8vector-shrink!
  u8vector?
  make-u8vector
  u8vector
  u8vector-length
  u8vector-ref
  u8vector-set!
  u8vector->list
  list->u8vector
  u8vector-fill!
  subu8vector-fill!
  u8vector-concatenate
  u8vector-copy
  u8vector-copy!
  u8vector-append
  subu8vector
  subu8vector-move!
  u8vector-shrink!
  s16vector?
  make-s16vector
  s16vector
  s16vector-length
  s16vector-ref
  s16vector-set!
  s16vector->list
  list->s16vector
  s16vector-fill!
  subs16vector-fill!
  s16vector-concatenate
  s16vector-copy
  s16vector-copy!
  s16vector-append
  subs16vector
  subs16vector-move!
  s16vector-shrink!
  u16vector?
  make-u16vector
  u16vector
  u16vector-length
  u16vector-ref
  u16vector-set!
  u16vector->list
  list->u16vector
  u16vector-fill!
  subu16vector-fill!
  u16vector-concatenate
  u16vector-copy
  u16vector-copy!
  u16vector-append
  subu16vector
  subu16vector-move!
  u16vector-shrink!
  s32vector?
  make-s32vector
  s32vector
  s32vector-length
  s32vector-ref
  s32vector-set!
  s32vector->list
  list->s32vector
  s32vector-fill!
  subs32vector-fill!
  s32vector-concatenate
  s32vector-copy
  s32vector-copy!
  s32vector-append
  subs32vector
  subs32vector-move!
  s32vector-shrink!
  u32vector?
  make-u32vector
  u32vector
  u32vector-length
  u32vector-ref
  u32vector-set!
  u32vector->list
  list->u32vector
  u32vector-fill!
  subu32vector-fill!
  u32vector-concatenate
  u32vector-copy
  u32vector-copy!
  u32vector-append
  subu32vector
  subu32vector-move!
  u32vector-shrink!
  s64vector?
  make-s64vector
  s64vector
  s64vector-length
  s64vector-ref
  s64vector-set!
  s64vector->list
  list->s64vector
  s64vector-fill!
  subs64vector-fill!
  s64vector-concatenate
  s64vector-copy
  s64vector-copy!
  s64vector-append
  subs64vector
  subs64vector-move!
  s64vector-shrink!
  u64vector?
  make-u64vector
  u64vector
  u64vector-length
  u64vector-ref
  u64vector-set!
  u64vector->list
  list->u64vector
  u64vector-fill!
  subu64vector-fill!
  u64vector-concatenate
  u64vector-copy
  u64vector-copy!
  u64vector-append
  subu64vector
  subu64vector-move!
  u64vector-shrink!
  f32vector?
  make-f32vector
  f32vector
  f32vector-length
  f32vector-ref
  f32vector-set!
  f32vector->list
  list->f32vector
  f32vector-fill!
  subf32vector-fill!
  f32vector-concatenate
  f32vector-copy
  f32vector-copy!
  f32vector-append
  subf32vector
  subf32vector-move!
  f32vector-shrink!
  f64vector?
  make-f64vector
  f64vector
  f64vector-length
  f64vector-ref
  f64vector-set!
  f64vector->list
  list->f64vector
  f64vector-fill!
  subf64vector-fill!
  f64vector-concatenate
  f64vector-copy
  f64vector-copy!
  f64vector-append
  subf64vector
  subf64vector-move!
  f64vector-shrink!

  pretty-print pp
  integer-sqrt integer-nth-root
  touch
  current-user-interrupt-handler defer-user-interrupts
  make-will
  will?
  will-testator
  will-execute!

    create-fifo
  create-link
  create-symbolic-link
  shell-command
  command-line
  timeout->time
  process-times
  cpu-time
  real-time
  time
  file-info
  file-info?
  file-info-type
  file-info-device
  file-info-inode
  file-info-mode
  file-info-number-of-links
  file-info-owner
  file-info-group
  file-info-size
  file-info-last-access-time
  file-info-last-modification-time
  file-info-last-change-time
  file-info-attributes
  file-info-creation-time
  file-device
  file-inode
  file-mode
  file-number-of-links
  file-owner
  file-group
  file-size
  file-last-access-time
  file-last-modification-time
  file-last-change-time
  file-attributes
  file-creation-time
  group-info
  group-info?
  group-info-name
  group-info-gid
  group-info-members
  user-name
  user-info
  user-info?
  user-info-name
  user-info-uid
  user-info-gid
  user-info-home
  user-info-shell
  host-name
  host-info
  host-info?
  host-info-name
  host-info-aliases
  host-info-addresses
  address-infos
  address-info?
  address-info-family
  address-info-socket-type
  address-info-protocol
  address-info-socket-info
  service-info
  service-info?
  service-info-name
  service-info-aliases
  service-info-port-number
  service-info-protocol
  protocol-info
  protocol-info?
  protocol-info-name
  protocol-info-aliases
  protocol-info-number
  network-info
  network-info?
  network-info-name
  network-info-aliases
  network-info-number

  tcp-client-peer-socket-info
  tcp-client-self-socket-info
  tcp-server-socket-info
  socket-info?
  socket-info-address socket-info-family socket-info-port-number

  ;; tty stuff
  tty?
  tty-history tty-history-set! tty-history-max-length-set!
  tty-text-attributes-set! tty-mode-set!
  tty-type-set!

    input-port-timeout-set!
  output-port-timeout-set!
  input-port-line
  input-port-column
  output-port-line
  output-port-column

  output-port-width
  read-substring
  write-substring
  input-port-readtable
  output-port-readtable
  input-port-readtable-set!
  output-port-readtable-set!

  read-subu8vector
  write-subu8vector
  open-file
  input-port-byte-position
  output-port-byte-position
  open-tcp-client
  open-tcp-server
  tcp-service-register!
  tcp-service-unregister!

  ;; v4.8+
  make-tls-context

  socket-info?
  socket-info-family
  socket-info-port-number
  socket-info-address
  tcp-client-peer-socket-info
  tcp-client-self-socket-info
  tcp-client-local-socket-info ; v4.8.8-20180130
  tcp-server-socket-info

  ;; UDP v4.8.8-20180130
  open-udp
  udp-destination-set!
  udp-local-socket-info
  udp-read-subu8vector
  udp-read-u8vector
  udp-source-socket-info
  udp-write-subu8vector
  udp-write-u8vector

  open-directory

  open-vector
  open-input-vector
  open-output-vector
  call-with-input-vector
  call-with-output-vector
  with-input-from-vector
  with-output-to-vector
  open-vector-pipe
  get-output-vector

  open-string
  open-input-string
  open-output-string
  call-with-input-string
  call-with-output-string
  with-input-from-string
  with-output-to-string
  open-string-pipe
  get-output-string
  object->string

  print
  println

  open-u8vector open-input-u8vector open-output-u8vector
  call-with-input-u8vector with-input-from-u8vector
  call-with-output-u8vector with-output-to-u8vector
  open-u8vector-pipe
  get-output-u8vector
  object->u8vector

  open-process open-input-process open-output-process
  call-with-input-process call-with-output-process
  with-input-from-process with-output-to-process
  process-pid process-status

  with-input-from-port with-output-to-port
  input-port-char-position output-port-char-position
  open-event-queue
  open-dummy
  port-settings-set!
  input-port-bytes-buffered
  input-port-characters-buffered
  repl-input-port repl-output-port console-port

  default-random-source
  random-integer random-real random-u8vector random-f64vector
  make-random-source random-source?
  random-source-state-ref random-source-state-set!
  random-source-randomize! random-source-pseudo-randomize!
  random-source-make-integers random-source-make-reals
  random-source-make-u8vectors random-source-make-f64vectors

  current-readtable
  readtable?
  readtable-case-conversion?
  readtable-case-conversion?-set
  readtable-keywords-allowed?
  readtable-keywords-allowed?-set
  readtable-sharing-allowed?
  readtable-sharing-allowed?-set
  readtable-eval-allowed?
  readtable-eval-allowed?-set
  readtable-write-cdr-read-macros?
  readtable-write-cdr-read-macros?-set
  readtable-write-extended-read-macros?
  readtable-write-extended-read-macros?-set
  readtable-max-write-level
  readtable-max-write-level-set
  readtable-max-write-length
  readtable-max-write-length-set
  readtable-max-unescaped-char
  readtable-max-unescaped-char-set

  system-version system-version-string system-type system-type-string
  configure-command-string system-stamp
  gc-report-set!

  ;; thread primitives
  thread-base-priority
  thread-base-priority-set!
  thread-priority-boost
  thread-priority-boost-set!
  thread-quantum
  thread-quantum-set!
  thread-terminate!
  thread-mailbox-next
  thread-mailbox-rewind
  thread-mailbox-extract-and-rewind
  mutex-name
  mutex-specific
  mutex-specific-set!
  mutex-state
  condition-variable-name
  condition-variable-specific
  condition-variable-specific-set!

  ;; miscellanea
  make-thread-group
  thread-group-specific thread-group-specific-set!
  thread-group-parent thread-group-resume! thread-group-suspend!
  thread-group-terminate! thread-group->thread-group-list
  thread-group->thread-group-vector thread-group->thread-list
  thread-group->thread-vector
  thread-state thread-state-uninitialized? thread-state-initialized?
  thread-state-running? thread-state-running-processor
  thread-state-waiting? thread-state-waiting-for thread-state-waiting-timeout
  thread-state-normally-terminated?
  thread-state-normally-terminated-result
  thread-state-abnormally-terminated?
  thread-state-abnormally-terminated-reason
  top thread-interrupt! thread-suspend! thread-resume!
  thread-init!

  ;; system processors
  processor? current-processor processor-id)

(defalias random-bytes random-u8vector)
(defalias random-source-make-bytes random-source-make-u8vectors)
