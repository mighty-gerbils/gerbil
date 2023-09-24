;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS inotify interface [linux]

(require linux)
(import :std/foreign
        :std/error
        :std/misc/timeout
        ./error
        ./fd
        ./fdio
        ./fcntl)
(export inotify-init inotify? inotify-close
        inotify-add-watch inotify-rm-watch
        inotify
        (struct-out inotify-event)
        IN_ACCESS
        IN_ATTRIB
        IN_CLOSE_WRITE
        IN_CLOSE_NOWRITE
        IN_CREATE
        IN_DELETE
        IN_DELETE_SELF
        IN_MODIFY
        IN_MOVE_SELF
        IN_MOVED_FROM
        IN_MOVED_TO
        IN_OPEN
        IN_ALL_EVENTS
        IN_MOVE
        IN_CLOSE
        IN_DONT_FOLLOW
        IN_EXCL_UNLINK
        IN_MASK_ADD
        IN_ONESHOT
        IN_ONLYDIR
        IN_IGNORED
        IN_ISDIR
        IN_Q_OVERFLOW
        IN_UNMOUNT)

(defstruct inotify-event (wd mask cookie name)
  final: #t)

(def (inotify-init)
  (let (fd (check-os-error (_inotify_init) ; inotify_init1 (IN_NONBLOCK|IN_CLOEXEC)
             (inotify-init)))
    (fdopen fd 'in 'inotify)))

(def (inotify? obj)
  (fd-type? obj 'inotify))

(def (inotify-close in)
  (close-port in))

(def (inotify-add-watch in path mask)
  (check-os-error (_inotify_add_watch (fd-e in) path mask)
    (inotify-add-watch in path mask)))

(def (inotify-rm-watch in wd)
  (check-os-error (_inotify_rm_watch (fd-e in) wd)
    (inotify-rm-watch in wd)))

;; => [inotify-event ...]
(def (inotify in (timeo #f))
  (let* ((timeo (make-timeout timeo #t))
         (buf (get-buffer)))
    (let lp ()
      (let (rd (fdread in buf))
        (cond
         (rd
          (if (##fxzero? rd)
            (raise-io-closed inotify "empty inotify read")
            (inotify-events buf rd)))
         ((##wait-for-io! (fd-io-in in) timeo)
          (lp))
         (else #f))))))

(def (inotify-events buf rd)
  (let lp ((off 0) (evts []))
    (if (##fx< off rd)
      (let ((wd (inotify_event_wd buf off))
            (mask (inotify_event_mask buf off))
            (cookie (inotify_event_cookie buf off))
            (name (inotify_event_name buf off))
            (sz (inotify_event_size buf off)))
        (lp (##fx+ off sz)
            (cons (make-inotify-event wd mask cookie name)
                  evts)))
      (reverse evts))))

(def buffer-key
  'std/os/inotify#buffer)

(def (get-buffer)
  (cond
   ((thread-local-get buffer-key)
    => values)
   (else
    (let (buf (make-u8vector 4096))
      (thread-local-set! buffer-key buf)
      buf))))



;;; FFI impl
(begin-ffi (_inotify_init
            _inotify_add_watch _inotify_rm_watch
            inotify_event_wd
            inotify_event_mask
            inotify_event_cookie
            inotify_event_name
            inotify_event_size
            IN_ACCESS
            IN_ATTRIB
            IN_CLOSE_WRITE
            IN_CLOSE_NOWRITE
            IN_CREATE
            IN_DELETE
            IN_DELETE_SELF
            IN_MODIFY
            IN_MOVE_SELF
            IN_MOVED_FROM
            IN_MOVED_TO
            IN_OPEN
            IN_ALL_EVENTS
            IN_MOVE
            IN_CLOSE
            IN_DONT_FOLLOW
            IN_EXCL_UNLINK
            IN_MASK_ADD
            IN_ONESHOT
            IN_ONLYDIR
            IN_IGNORED
            IN_ISDIR
            IN_Q_OVERFLOW
            IN_UNMOUNT)
  (c-declare "#include <sys/inotify.h>")

  (define-macro (define-const-uint32 symbol)
    (let* ((str (symbol->string symbol))
           (ref (string-append "___return (" str ");")))
      `(define ,symbol
         ((c-lambda () unsigned-int32 ,ref)))))

  (namespace ("std/os/inotify"
               __inotify_init
               __inotify_add_watch
               __inotify_rm_watch))

  (define-const-uint32 IN_ACCESS)
  (define-const-uint32 IN_ATTRIB)
  (define-const-uint32 IN_CLOSE_WRITE)
  (define-const-uint32 IN_CLOSE_NOWRITE)
  (define-const-uint32 IN_CREATE)
  (define-const-uint32 IN_DELETE)
  (define-const-uint32 IN_DELETE_SELF)
  (define-const-uint32 IN_MODIFY)
  (define-const-uint32 IN_MOVE_SELF)
  (define-const-uint32 IN_MOVED_FROM)
  (define-const-uint32 IN_MOVED_TO)
  (define-const-uint32 IN_OPEN)
  (define-const-uint32 IN_ALL_EVENTS)
  (define-const-uint32 IN_MOVE)
  (define-const-uint32 IN_CLOSE)
  (define-const-uint32 IN_DONT_FOLLOW)
  (define-const-uint32 IN_EXCL_UNLINK)
  (define-const-uint32 IN_MASK_ADD)
  (define-const-uint32 IN_ONESHOT)
  (define-const-uint32 IN_ONLYDIR)
  (define-const-uint32 IN_IGNORED)
  (define-const-uint32 IN_ISDIR)
  (define-const-uint32 IN_Q_OVERFLOW)
  (define-const-uint32 IN_UNMOUNT)

  (define-c-lambda __inotify_init () int
    "___return (inotify_init1 (IN_NONBLOCK|IN_CLOEXEC));")
  (define-c-lambda __inotify_add_watch (int UTF-8-string int) int
    "inotify_add_watch")
  (define-c-lambda __inotify_rm_watch (int int) int
    "inotify_rm_watch")

  (define-with-errno _inotify_init __inotify_init ())
  (define-with-errno _inotify_add_watch __inotify_add_watch (fd path mask))
  (define-with-errno _inotify_rm_watch __inotify_rm_watch (fd wd))

  (c-declare "static int ffi_inotify_event_wd (___SCMOBJ buf, int off);")
  (c-declare "static uint32_t ffi_inotify_event_mask (___SCMOBJ buf, int off);")
  (c-declare "static uint32_t ffi_inotify_event_cookie (___SCMOBJ buf, int off);")
  (c-declare "static char *ffi_inotify_event_name (___SCMOBJ buf, int off);")
  (c-declare "static int ffi_inotify_event_size (___SCMOBJ buf, int off);")

  (define-c-lambda inotify_event_wd (scheme-object int) int
    "ffi_inotify_event_wd")
  (define-c-lambda inotify_event_mask (scheme-object int) unsigned-int32
    "ffi_inotify_event_mask")
  (define-c-lambda inotify_event_cookie (scheme-object int) unsigned-int32
    "ffi_inotify_event_cookie")
  (define-c-lambda inotify_event_name (scheme-object int) UTF-8-string
    "ffi_inotify_event_name")
  (define-c-lambda inotify_event_size (scheme-object int) int
    "ffi_inotify_event_size")

  (c-declare #<<END-C
int ffi_inotify_event_wd (___SCMOBJ buf, int off)
{
 return ((struct inotify_event*)(U8_DATA (buf) + off))->wd;
}

uint32_t ffi_inotify_event_mask (___SCMOBJ buf, int off)
{
 return ((struct inotify_event*)(U8_DATA (buf) + off))->mask;
}

uint32_t ffi_inotify_event_cookie (___SCMOBJ buf, int off)
{
 return ((struct inotify_event*)(U8_DATA (buf) + off))->cookie;
}

char *ffi_inotify_event_name (___SCMOBJ buf, int off)
{
 struct inotify_event *ptr = (struct inotify_event*)(U8_DATA (buf) + off);
 if (ptr->len)
  return ptr->name;
 return NULL;
}

int ffi_inotify_event_size (___SCMOBJ buf, int off)
{
 return sizeof (struct inotify_event) + ((struct inotify_event*)(U8_DATA (buf) + off))->len;
}
END-C
))
