;;; -*- Gerbil -*-
;;; © vyzo
;;; string writer implementation
(import :gerbil/gambit
        :std/error
        :std/sugar
        ../interface
        ../bio/types
        ../bio/output
        ./types
        ./packed)
(export #t)
(declare (not safe))

(defrule (strio-output-drain! bio buf whi)
  (&Writer-write (&output-buffer-writer bio) buf 0 whi))

(def (strio-write-string strio input input-start input-end)
  (let* ((input-want (fx- input-end input-start))
         (bio (&string-writer-bio strio))
         (whi (&output-buffer-whi bio))
         (buf (&output-buffer-buf bio))
         (buflen (u8vector-length buf)))
    (cond
     ((fx= input-want 0) 0)
     ((fx> whi 0)
      (strio-output-drain! bio buf whi)
      (bio-output-consume! bio)
      (strio-write-string strio input input-start input-end))
     (else
      (let* ((result
              ((&string-writer-codec strio) input input-start input-end buf 0 buflen))
             (consumed-chars (unpack-first result))
             (output-bytes (unpack-second result)))
        (strio-output-drain! bio buf output-bytes)
        (if (fx< consumed-chars input-want)
          ;; partial output
          (fx+ consumed-chars (strio-write-string strio input (fx+ input-start consumed-chars) input-end))
          ;; full output
          (fx- input-end input-start)))))))

(def (strio-close-output strio)
  (unless (&string-writer-closed? strio)
    (set! (&string-writer-closed? strio) #t)
    (bio-close-output (&string-writer-bio strio))))
