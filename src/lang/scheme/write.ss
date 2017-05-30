;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme write) library
package: scheme

(import :scheme/write-impl)

(export
  display
  write
  write-shared
  (rename: write write-simple)
  )
