;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: system-info
package: gerbil/gambit

(export #t)
(extern namespace: #f
  system-version system-version-string system-type system-type-string
  configure-command-string system-stamp
  gc-report-set!
  )
