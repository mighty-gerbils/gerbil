;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server hostnames
(import :std/ffi)
(export hostname)

(def +hostname+ #f)
(def +hostid+   #f)

(def (hostname)
  => :string
  (if +hostname+
    (: +hostname+ :string)
    (let (name (gethostname))
      (set! +hostname+ name)
      name)))

(def (hostid)
  => :string
  (if +hostid+
    (: +hostid+ :string)
    (let* ((name (hostname))
           (id   (gethostid))
           (hid  (string-append name "+" (number->string id))))
      (set! +hostid+ hid)
      hid)))

(C-ffi-macrology)
(C-include "<unistd.h>")
(C-declare #<<END-C

static char* ffi_gethostname() {
  char hostname_buf[1024];
  gethostname(hostname_buf, sizeof(hostname_buf));
  return hostname_buf;
}

END-C
)

(def-C-lambda gethostname () char-string "ffi_gethostname")
(def-C-lambda gethostid () long)
