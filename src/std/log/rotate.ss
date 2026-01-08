;;; -*- Gerbil -*-
;;; © vyzo
;;; file system rotating loger
(import :std/error
        :std/io
        :std/time
        :std/misc/queue
        ./interface
        ./proto)
(export #t)

(defclass LogRotateOpt
  ((dir      : :string)    ; log directory
   (file     : :string)    ; log file name
   (size     : :integer)   ; log file size rotation trigger
   (backlog  : :integer)   ; aggregate backlog size
   (flush    : :flonum)    ;
   (compress : :procedure) ; file compressor function lambda (path) => path
   (write    : :procedure) ; record write procedure: lambda (BufferedWriter Record) => :fixnum
   )
  final: #t transparent: #t)

(defclass (LogRotateSink BasicLogger)
  ((opt      :- LogRotateOpts)
   (mx       :- :mutex)
   (thread   :- :thread)
   (path     :- :string)
   (size     :- :fixnum)
   (backlog  :- :fixnum)
   (backlogq :- queue)
   (file     :- Writer)
   (buffer   :- BufferedWriter))
  final: #t)

(def (make-log-rotate-sink (opt : LogRotateOpt)) => LogSink
  (LogSink
   (LogRotateSink
    opt:  opt
    mx:   (make-mutex 'log-rotate))))

(defmethod {start! LogRotateSink}
  (lambda (self)
    (do-with-lock self.mx
      (unless self.thread
        {self.__start}
        (set! self.thread (spawn-thread (lambda () {self.__background}) 'log-rotate)))))
  interface: LogSink)

(defmethod {stop! LogRotateSink}
  (lambda (self)
    (do-with-lock self.mx
      (when self.thread
        (thread-send self.thread !STOP!)
        {self.__close}
        (unwind-protect
          (thread-join! self.thread)
          (set! self.thread #f)))))
  interface: LogSink)

(defmethod {log LogRotateSink}
  (lambda (self record)
    (do-with-lock self.mx
      (when self.thread
        (let (wr (self.write self.buffer record))
          (set! self.size (+ self.size wr))
          (when (> self.size self.opts.size)
            {self.__rotate})))))
  interface: Log)

(defmethod {__start LogRotateSink}
  (lambda (self)
    ;; prepare the backlog
    (let* ((prefix (string-append self.opt.file "~"))
           (files  (directory-files self.opt.dir))
           (files  (filter-map
                    (lambda (f)
                      (and (string-prefix? prefix f)
                           (cons f (file-info f))))
                    files))
           (files (list-sort
                   (lambda ((a :- :pair) (b :- :pair))
                     (let ((tma (file-info-creation-time (cdr a)))
                           (tmb (file-info-creation-time (cdr b))))
                       (fl< (time->seconds tma)
                            (time->seconds tmb)))))
                  files))
      (for-each
        (lambda ((p :- pair))n
          (let ((file (car p))
                (size (file-info-size (cdr p))))
            (set! self.backlog (+ self.backlog size))
            (enqueue! self.backlogq (cons file size ))))
        files)
    ;; prepare the output file
    {self.__prepare}))

(defmethod {__prepare LogRotateSink}
  (lambda (self)
    (let* ((path (or self.path (path-expand self.opt.file self.opt.dir)))
           (exists? (file-exists? path))
           (size
            (if exists?
              (file-info-size (file-info path))
              0))
           (_ (unless exists?
                (create-directory* (path-directory path))))
           (file
            (open-file-writer path flags: (if exists? O_APPEND O_CREAT)))
           (buffer
            (open-buffered-writer file)))
      (set! self.path path)
      (set! self.size size)
      (set! self.file file)
      (set! self.buffer buffer))))

(defmethod {__rotate LogRotateSink}
  (lambda (self)
    {self.__close}
    (let* ((next-file       (path-with-timestamp self.file))
           (_               (move-file self.file next-file))
           (compressed-file (self.opt.compress next-file))
           (compressed-size (file-info-size (file-info compressed)))
           (backlog         (+ compressed-size self.backlog)))
      ;; remove the file if the compressor didn't
      (when (file-exists? next-file)
        (delete-file next-file))
      ;; adjust the backlog
      (enqueue! self.backlogq (cons compressed-file compressed-size))
      (let loop ((backlog backlog))
        (if (and (> backlog self.opt.backlog)
                 (non-queue-empty? self.backlogq))
          (with ([file . size] (dequeue! self.backlogq))
            (delete-file file)
            (loop (- backlog size)))
          (set! self.backlog backlog)))
      ;; prepare the output file
      {self.__prepare})))

(defmethod {__close LogRotateSink}
  (lambda (self)
    (unwind-protect
      (self.buffer.close)
      (set! self.buffer #f)
      (set! self.file #f))))

(defmethod {__background LogRotateSink}
  (lambda (self)
    (let/cc exit
      (while #t
        (let (next (thread-receive self.opt.flush #f))
          (match next
            (#f
             (do-with-lock self.mx
               (self.buffer.flush)))
            ((!STOP)
             (exit 'STOP))
            (else
             (void))))))))

(def (path-with-timestamp path)
  (string-append path "~" (time->string (current-time-coarse))))
