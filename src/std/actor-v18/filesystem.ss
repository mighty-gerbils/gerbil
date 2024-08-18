;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble filesystem actor
(import :std/io
        :std/crypto/digest
        :std/config
        :std/iter
        :std/sugar
        :std/text/hex
        :std/misc/process
        (only-in :std/srfi/13 string-contain)
        ./logger
        ./message
        ./proto
        ./server
        ./server-identifier
        ./ensemble-util)
(export #t)

(def filesystem-upload-chunk-size 16384)
(def filesystem-upload-ttl 120)

(def (file-digest path)
  (using (input (open-file-reader path) : Reader)
    (let ((buf (make-u8vector filesystem-upload-chunk-size))
          (digest (make-sha256-digest)))
      (let loop ()
        (let (in (input.read buf))
          (if (fx> in 0)
            (begin
              (digest-update! digest buf 0 in)
              (loop))
            (begin
              (input.close)
              (digest-final! digest))))))))

(defmessage !filesystem-upload-begin (type path cksum))
(defmessage !filesystem-upload-continue (token start))
(defmessage !filesystem-upload-chunk (token offset data))
(defmessage !filesystem-upload-end (token))

(defclass Upload
  ((cksum  : :u8vector)
   (blob   : :string)
   (path   : :string)
   (type   : :pair)
   (writer : Writer)
   (offset : :integer)
   (expire : :flonum))
  final: #t)

(def (upload-blob-key (cksum : :u8vector))
  (hex-encode cksum))

(def (upload-blob-path (type : :pair) (key : :string))
  (path-expand key (path-expand "blob" (current-directory))))

(def (upload-expiration-time)
  (+ (##current-time-point) filesystem-upload-ttl))

;; current-directory: root of the filesystem
(def (start-ensemble-filesystem! (srv (current-actor-server)))
  (spawn/name 'filesystem ensemble-filesystem srv))

(def (ensemble-filesystem srv)
  (register-actor! 'filesystem srv)
  (infof "starting filesystem...")

  ;; prepare filesystem layout
  (for (dir ["bin" "env" "fs" "blob" "log"])
    (create-directory dir))

  ;; and run the actor loop
  (let/cc exit
    ;; in progress uploads
    (def uploads (make-hash-table))

    ;; gc ticker
    (def gc-ticker
      (spawn/name 'ticker ticker (current-thread) 60))

    (def (upload-check! (type : :pair) (path : :string))
      (unless (member type '((exe . gz) (env . tar.gz) (fs . tar.gz)))
        (error "unknown upload type" type))
      (when (or (and (string-empty? path) (not (eq? (car type) 'fs)))
                (string-prefix? "/" path)
                (string-prefix? "." path)
                (string-contains path ".."))
        (error "bad deployment path" path)))

    (def (upload-begin type path cksum)
      (with-error-handler "upload-begin"
        (upload-check! type path)
        (let (blob-key (upload-blob-key cksum))
          (cond
           ((hash-get uploads blob-key)
            => (lambda ((up :- Upload))
                 (if (and (equal? type up.type)
                          (equal? path up.path))
                   (begin
                     (set! up.expire (upload-expiration-time))
                     (debugf "continuing upload ~a" blob-key)
                     (!filesystem-upload-continue blob-key up.offset))
                   (!error "upload in progress"))))
           (else
            (let (blob-path (upload-blob-path type blob-key))
              (if (file-exists? blob-path)
                ;; already uploaded, but potentially incomplete because of a restart
                (let (cksum2 (file-digest blob-path))
                  (if (equal? cksum cksum2)
                    (upload-finish blob-key type blob-path path)
                    (upload-begin-at blob-key type path cksum blob-path (file-size blob-path))))
                (upload-begin-at blob-key type path cksum blob-path 0))))))))

    (def (upload-begin-at key type path cksum blob-path offset)
      (let* ((wr (open-file-writer blob-path mode: #o640))
             (up (Upload cksum: cksum
                         blob: blob-path
                         type: type
                         writer: wr
                         offset: offset
                         expire: (upload-expiration-time))))
        (when (> offset 0)
          (using (seeker up : Seeker)
            (seeker.seek offset)))
        (hash-put! uploads key up)
        (debugf "begin upload ~a" key)
        (!filesystem-upload-continue key offset)))

    (def (upload-chunk key offset data)
      (with-error-log "upload-chunk"
        (cond
         ((hash-get uploads key)
          => (lambda ((up :- Upload))
               (if (= offset up.offset)
                 (begin
                   (up.writer.write data)
                   (set! up.offset (+ offset (u8vector-length data)))
                   (set! up.expire (upload-expiration-time)))
                 (debugf "unexpected chunk for ~a: chunk-offset: ~a writer-offset: ~a"
                         key offset up.offset))))
         (else
          (debugf "unexpected chunk for unknown upload: ~a" key)))))

    (def (upload-end key)
      (with-error-handler "upload-end"
        (cond
         ((hash-get uploads key)
          => (lambda ((up :- Upload))
               (hash-remove! uploads up)
               (up.writer.close)
               (if (equal? (file-digest up.blob) up.cksum)
                 (upload-finish key up.type up.blob up.path)
                 (begin
                   (delete-file up.blob)
                   (!error "checksum mismatch")))))
         (else
          (!error "unknown upload")))))

    (def (upload-finish key type blob-path deploy-path)
      (def (tar-expand base)
        (let (expand-path (path-expand deploy-path base))
          (create-directory* expand-path)
          (invoke "tar" ["xzf" "-C" expand-path blob-path])))
      (try
       (cond
        ((equal? type '(exe . gz))
         (let* ((executable (path-expand deploy-path "bin"))
                (executable.gz (string-append executable ".gz")))
           (when (file-exists? executable)
             (rename-file executable (string-append executable ".old." (number->string (##current-time-point)))))
           (rename-file blob-path executable.gz)
           (invoke "gunzip" [executable.gz])
           (invoke "chmod" ["+x" executable])))
        ((equal? type '(env . tar.gz))
         (tar-expand "env"))
        ((equal? type '(fs . tar.gz))
         (tar-expand "fs")))
       (!ok key)
       (finally
        (when (file-exists? blob-path)
          (delete-file blob-path)))))

    (def (upload-gc!)
      (for ([key . up] (hash->list uploads))
        (using (up : Upload)
          (when (> (##current-time-point) up.expire)
            (debugf "garbage collecting stale upload ~a" key)
            (up.writer.close)
            (delete-file up.blob)
            (hash-remove! uploads key)))))

    (def (shutdown! source nonce expiry reply-expected?)
      (for (up (hash-values uploads))
        (using (up :- Upload)
          (up.writer.close)
          (delete-file up.blob)))

      (when reply-expected?
        (-> source (!ok (void))
            replyto: nonce
            expiry: expiry)))

    (while #t
      (<-
       ;; uploads
       ((!filesystem-upload-begin type path cksum)
        (with-authorization 'filesystem (upload-begin type path cksum)))

       ((!filesystem-upload-chunk token offset data)
        (when (actor-authorized? 'filesystem)
          (upload-chunk token offset data)))

       ((!filesystem-upload-end token)
        (with-authorization 'filesystem (upload-end token)))

       ;; gc
       ((!tick)
        (upload-gc!))

       ;; management protocol
       ,(@shutdown
         (infof "filesystem shutting down ...")
         (shutdown! @source @nonce @expiry @reply-expected?)
         (-> gc-ticker (!shutdown))
         (exit 'shutdown))
       ,(@ping)
       ,(@unexpected warnf)))))
