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

__thread char buf[1024];
static char* ffi_gethostname() {
  gethostname(buf, sizeof(buf));
  return buf;
}
"))
