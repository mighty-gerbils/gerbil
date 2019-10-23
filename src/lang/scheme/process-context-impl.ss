;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme process-context) library -- implementation details
(export #t)

(def (get-environment-variable var)
  (getenv var #f))

(begin-foreign
  (c-declare #<<END-C
#include <unistd.h>
extern char **environ;
static int ffi_count_envvars ()
{
 int x;
 char **env;
 for (env = environ;
      *env;
      ++env) ++x;
 return x;
}

static char *ffi_get_envvar (int x)
{
 return environ[x];
}
END-C
)

(define-macro (define-c-lambda id args ret #!optional (name #f))
  (let ((name (or name (##symbol->string id))))
    `(define ,id
       (c-lambda ,args ,ret ,name))))


(define-c-lambda scheme/process-context-impl#count-envvars () int
  "ffi_count_envvars")
(define-c-lambda scheme/process-context-impl#get-envvar (int) char-string
  "ffi_get_envvar")
(define-c-lambda scheme/process-context-impl#_exit (int) void
  "_exit")
)

(extern count-envvars get-envvar _exit)

(def (get-environment-variables)
  (def (envvar str)
    (let (ix (string-index str #\=))
      (cons (substring str 0 ix)
            (substring str (fx1+ ix) (string-length str)))))

  (let (count (count-envvars))
    (let lp ((x 0) (vars []))
      (if (fx< x count)
        (lp (fx1+ x) (cons (envvar (get-envvar x)) vars))
        (reverse vars)))))

(def (r7rs-exit (normally? #t))
  (exit (if normally? 0 1)))

(cond-expand
  (,(> (system-version) 409002)
   (extern namespace: #f
     emergency-exit))
  (else
   (def (emergency-exit (normally? #t))
     (_exit (if normally? 0 1)))))
