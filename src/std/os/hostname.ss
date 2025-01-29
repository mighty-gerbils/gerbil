;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server hostnames
(import :std/foreign)
(export hostname)

(def +hostname+ #f)

(def (hostname)
  (if +hostname+
    +hostname+
    (let (name (gethostname))
      (set! +hostname+ name)
      name)))

(begin-ffi (gethostname)
  (define-c-lambda gethostname () char-string "ffi_gethostname")
  (c-declare "
#include <unistd.h>

#ifdef _MSC_VER
#define __thread __declspec(thread)
#endif

__thread char hostname_buf[1024];
static char* ffi_gethostname() {
  gethostname(hostname_buf, sizeof(hostname_buf));
  return hostname_buf;
}
"))
