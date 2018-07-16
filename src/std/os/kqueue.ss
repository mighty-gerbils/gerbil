;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS kqueue interface [bsd]
package: std/os

(require bsd)
(import :gerbil/gambit/threads
        (only-in :gerbil/gambit/ports close-port)
        :std/os/error
        :std/os/fd
        :std/os/fcntl)
(export kqueue kqueue-close
        make-kevents kqueue-poll
        kqueue-kevent-add kqueue-kevent-del
        kevent-ident kevent-filter kevent-flags
        kevent-fflags kevent-data kevent-udata
        set-kevent-ident! set-kevent-filter! set-kevent-flags!
        set-kevent-fflags! set-kevent-data! set-kevent-udata!
        EV_ADD EV_ENABLE EV_DISABLE EV_DISPATCH EV_DELETE
        EV_RECEIPT EV_ONESHOT EV_CLEAR EV_EOF EV_ERROR
        EVFILT_READ EVFILT_WRITE EVFILT_VNODE EVFILT_PROC
        EVFILT_SIGNAL EVFILT_TIMER
        NOTE_DELETE NOTE_WRITE NOTE_EXTEND NOTE_LOWAT
        NOTE_ATTRIB NOTE_LINK NOTE_RENAME NOTE_REVOKE NOTE_EXIT
        NOTE_FORK NOTE_EXEC NOTE_TRACK NOTE_TRACKERR)

(cond-expand
  ((not darwin)
   (export EVILT_DEVICE NOTE_TRUNCATE NOTE_EOF NOTE_CHANGE)))

(def (kqueue)
  (let* ((fd (check-os-error (_kqueue) (kqueue)))
         (raw (fdopen fd 'in 'kqueue)))
    (fd-set-closeonexec raw)
    raw))

(def (kqueue-close kq)
  (close-port kq))

(def (make-kevents size)
  (check-ptr (make_kevents size)))

(def (kevent kqueue change-list nchanges event-list nevents timeout)
  (check-os-error
   (_kevent (fd-e kqueue) change-list nchanges event-list nevents timeout)
   (kevent kqueue change-list nchanges event-list nevents timeout)))

(def (kqueue-poll kqueue events nevents)
  (kevent kqueue #f 0 events nevents timeout-zero))

(def (kqueue-kevent-add kqueue dev filter)
  (let (kevt (get-kevent-ptr))
    (kevent_ident_set kevt 0 (fd-e dev))
    (kevent_flags_set kevt 0 EV_ADD)
    (kevent_filter_set kevt 0 filter)
    (kevent kqueue kevt 1 #f 0 #f)))

(def (kqueue-kevent-del kqueue dev)
  (let (kevt (get-kevent-ptr))
    (kevent_ident_set kevt 0 (fd-e dev))
    (kevent_flags_set kevt 0 EV_DELETE)
    (kevent kqueue kevt 1 #f 0 #f)))

(def kevent-ptr-key
  'std/os/kqueue#kevent-ptr)

(def (get-kevent-ptr)
  (cond
   ((thread-local-get kevent-ptr-key)
    => values)
   (else
    (let (kevent-ptr (check-ptr (make_kevents 1)))
      (thread-local-set! kevent-ptr-key kevent-ptr)
      kevent-ptr))))

(def kevent-ident kevent_ident)
(def kevent-filter kevent_filter)
(def kevent-flags kevent_flags)
(def kevent-fflags kevent_fflags)
(def kevent-data kevent_data)
(def kevent-udata kevent_udata)

(def set-kevent-ident! kevent_ident_set)
(def set-kevent-filter! kevent_filter_set)
(def set-kevent-flags! kevent_flags_set)
(def set-kevent-fflags! kevent_fflags_set)
(def set-kevent-data! kevent_data_set)
(def set-kevent-udata! kevent_udata_set)

(def timeout-zero (make-timeout 0 0))

(def (make-timeout seconds nanoseconds)
  (let (timespec (check-ptr (make_timespec)))
    (timespec_seconds_set timespec seconds)
    (timespec_nanoseconds_set timespec nanoseconds)
    timespec))

(extern
  EV_ADD EV_ENABLE EV_DISABLE EV_DISPATCH
  EV_DELETE EV_RECEIPT EV_ONESHOT EV_CLEAR EV_EOF EV_ERROR
  EVFILT_READ EVFILT_WRITE EVFILT_VNODE EVFILT_PROC
  EVFILT_SIGNAL EVFILT_TIMER
  NOTE_DELETE NOTE_WRITE NOTE_EXTEND NOTE_LOWAT
  NOTE_ATTRIB NOTE_LINK NOTE_RENAME NOTE_REVOKE NOTE_EXIT
  NOTE_FORK NOTE_EXEC NOTE_TRACK NOTE_TRACKERR
  make_timespec timespec_seconds_set timespec_nanoseconds_set
  _kqueue _kevent
  make_kevents
  kevent_ident kevent_ident_set
  kevent_filter kevent_filter_set
  kevent_flags kevent_flags_set
  kevent_fflags kevent_fflags_set
  kevent_data kevent_data_set
  kevent_udata kevent_udata_set
  ev_set)

(cond-expand
  ((not darwin)
    (extern EVILT_DEVICE NOTE_TRUNCATE NOTE_EOF NOTE_CHANGE)))

(cond-expand
  (darwin
    (begin-foreign
      (define-cond-expand-feature bsd)
      (define-cond-expand-feature darwin))))

(begin-foreign
  (c-declare "#include <errno.h>")
  (c-declare "#include <stdlib.h>")
  (c-declare "#include <sys/types.h>")
  (c-declare "#include <sys/event.h>")
  (c-declare "#include <sys/time.h>")

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-macro (define-const symbol)
    (let* ((str (##symbol->string symbol))
           (ref (##string-append "___return (" str ");")))
      `(define ,symbol
         ((c-lambda () int ,ref)))))

  (define-macro (define-with-errno symbol ffi-symbol args)
    `(define (,symbol ,@args)
       (declare (not interrupts-enabled))
       (let ((r (,ffi-symbol ,@args)))
         (if (##fx< r 0)
           (##fx- (__errno))
           r))))

  (namespace ("std/os/kqueue#"
              EV_ADD EV_ENABLE EV_DISABLE EV_DISPATCH
              EV_DELETE EV_RECEIPT EV_ONESHOT EV_CLEAR EV_EOF EV_ERROR
              EVFILT_READ EVFILT_WRITE EVFILT_VNODE EVFILT_PROC
              EVFILT_SIGNAL EVFILT_TIMER EVFILT_DEVICE
              NOTE_DELETE NOTE_WRITE NOTE_EXTEND NOTE_TRUNCATE NOTE_LOWAT
              NOTE_EOF
              NOTE_ATTRIB NOTE_LINK NOTE_RENAME NOTE_REVOKE NOTE_EXIT
              NOTE_FORK NOTE_EXEC NOTE_TRACK NOTE_TRACKERR NOTE_CHANGE
              kevent kevent* timespec timespec*
              make_timespec timespec_seconds_set timespec_nanoseconds_set
              __errno __kqueue __kevent
              _kqueue _kevent
              make_kevents
              kevent_ident kevent_ident_set
              kevent_filter kevent_filter_set
              kevent_flags kevent_flags_set
              kevent_fflags kevent_fflags_set
              kevent_data kevent_data_set
              kevent_udata kevent_udata_set
              ev_set
              ))

  ;; Filters
  (define-const EV_ADD)
  (define-const EV_ENABLE)
  (define-const EV_DISABLE)
  (define-const EV_DISPATCH)
  (define-const EV_DELETE)
  (define-const EV_RECEIPT)
  (define-const EV_ONESHOT)
  (define-const EV_CLEAR)
  (define-const EV_EOF)
  (define-const EV_ERROR)

  ;; Flags
  (define-const EVFILT_READ)
  (define-const EVFILT_WRITE)
  (define-const EVFILT_VNODE)
  (define-const EVFILT_PROC)
  (define-const EVFILT_SIGNAL)
  (define-const EVFILT_TIMER)
  (cond-expand
    ((not darwin)
     (define-const EVFILT_DEVICE))
    (else))

  ;; Filter Flags
  (define-const NOTE_DELETE)
  (define-const NOTE_WRITE)
  (define-const NOTE_EXTEND)
  (cond-expand
    ((not darwin)
     (define-const NOTE_TRUNCATE))
    (else))
  (define-const NOTE_LOWAT)
  (cond-expand
    ((not darwin)
     (define-const NOTE_EOF))
    (else))
  (define-const NOTE_ATTRIB)
  (define-const NOTE_LINK)
  (define-const NOTE_RENAME)
  (define-const NOTE_REVOKE)
  (define-const NOTE_EXIT)
  (define-const NOTE_FORK)
  (define-const NOTE_EXEC)
  (define-const NOTE_TRACK)
  (define-const NOTE_TRACKERR)
  (cond-expand
    ((not darwin)
     (define-const NOTE_CHANGE))
    (else))

  (c-declare "static ___SCMOBJ ffi_free (void *ptr);")

  (c-define-type kevent (struct "kevent"))
  (c-define-type kevent*
    (pointer kevent (kevent*) "ffi_free"))
  (c-define-type timespec (struct "timespec"))
  (c-define-type timespec*
    (pointer timespec (timespec*) "ffi_free"))

  (define-c-lambda make_timespec () timespec*
    "___return ((struct timespec*)malloc(sizeof(struct timespec)));")
  (define-c-lambda timespec_seconds_set (timespec* int) void
    "___arg1->tv_sec = ___arg2; ___return ;")
  (define-c-lambda timespec_nanoseconds_set (timespec* int) void
    "___arg1->tv_nsec = ___arg2; ___return ;")

  (define-c-lambda __errno () int
    "___return (errno);")

  (define-c-lambda __kqueue () int
    "kqueue")
  (define-c-lambda __kevent (int kevent* int kevent* int timespec*) int
    "kevent")

  (define-with-errno _kqueue __kqueue ())
  (define-with-errno _kevent __kevent (kqfd chgs nchgs evts nevts timeo))

  (define-c-lambda make_kevents (int) kevent*
    "___return ((struct kevent*)malloc (___arg1 * sizeof (struct kevent)));")

  (define-c-lambda kevent_ident (kevent* int) unsigned-int
    "___return (___arg1[___arg2].ident);")
  (define-c-lambda kevent_ident_set (kevent* int unsigned-int) void
    "___arg1[___arg2].ident = ___arg3; ___return;")

  (define-c-lambda kevent_filter (kevent* int) short
    "___return (___arg1[___arg2].filter);")
  (define-c-lambda kevent_filter_set (kevent* int short) void
    "___arg1[___arg2].filter = ___arg3; ___return;")

  (define-c-lambda kevent_flags (kevent* int) unsigned-short
    "___return (___arg1[___arg2].flags);")
  (define-c-lambda kevent_flags_set (kevent* int unsigned-short) void
    "___arg1[___arg2].flags = ___arg3; ___return;")

  (define-c-lambda kevent_fflags (kevent* int) unsigned-int
    "___return (___arg1[___arg2].fflags);")
  (define-c-lambda kevent_fflags_set (kevent* int unsigned-int) void
    "___arg1[___arg2].fflags = ___arg3; ___return;")

  (define-c-lambda kevent_data (kevent* int) int64
    "___return (___arg1[___arg2].data);")
  (define-c-lambda kevent_data_set (kevent* int int64) void
    "___arg1[___arg2].data = ___arg3; ___return;")

  (define-c-lambda kevent_udata (kevent* int) (pointer void)
    "___return (___arg1[___arg2].udata);")
  (define-c-lambda kevent_udata_set (kevent* int (pointer void)) void
    "___arg1[___arg2].udata = ___arg3; ___return;")

  (define-c-lambda ev_set
    (kevent* int unsigned-int short unsigned-short unsigned-int int64 (pointer void)) void
    "EV_SET(&___arg1[___arg2], ___arg3, ___arg4, ___arg5, ___arg6, ___arg7, ___arg8); ___return;")

  (c-declare #<<END-C
#ifndef __HAVE_FFI_FREE
#define __HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr)
{
 free(ptr);
 return ___FIX (___NO_ERR);
}
#endif
END-C
))
