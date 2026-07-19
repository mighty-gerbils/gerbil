;;; -*- Gerbil -*-
;;; © vyzo
;;; file system rotating loger
(import :std/error
        :std/interface
        :std/io
        :std/time/precise
        :std/struct/queue
        :std/os/fcntl
        ./interface
        ./proto
        ./level
        ./format
        ./compress)
(export (struct-out LogRotateOpt)
        new-log-rotate-sink)

(defclass LogRotateOpt
  ((name     : :string    := "/app/filesystem")
   (level    : :fixnum    := INFO)
   (dir      : :string    := (log-directory)) ; log directory
   (file     : :string    := "gerbil.log")    ; log base file name
   (size     : :integer   := (expt 2 22))     ; log file size rotation trigger
   (backlog  : :integer   := (expt 2 24))     ; aggregate backlog size
   (flush    : :flonum    := 0.1)             ; log flush interval, seconds
   (compress : :procedure := compress-gzip)   ; file compressor procedure lambda (path) => path
   (write    : :procedure := format-log-line) ; record write procedure: lambda (BufferedWriter Record) => :fixnum
   (accept   : :procedure := accept-all)      ; record filter procedure: lambda (Record) => :boolean
   )
  final: #t)

(defclass (LogRotateSink BasicLogger)
  ((opt      :- LogRotateOpt)
   (thread   :- :thread)
   (path     :- :string)
   (size     :- :fixnum)
   (backlog  :- :fixnum)
   (backlogq :- Queue)
   (file     :- Writer)
   (buffer   :- BufferedWriter))
  final: #t)

(def (new-log-rotate-sink (opt : LogRotateOpt := (LogRotateOpt)))
  => LogSink
  (LogSink
   (LogRotateSink
    name: opt.name
    level: opt.level
    opt: opt)))

(def (accept-all _) #t)

(defmethod {start! LogRotateSink}
  (lambda (self)
    (unless self.thread
      {self.__start}
      (set! self.thread
        (spawn-thread (lambda () {self.__background})
                      'system/log/rotate))))
  interface: LogSink)

(defmethod {stop! LogRotateSink}
  (lambda (self)
    (when self.thread
      (thread-send self.thread !STOP!))
    (unwind-protect
      (thread-join! self.thread)
      (set! self.thread #f)))
  interface: LogSink)

(defmethod {log LogRotateSink}
  (lambda (self record)
    (when self.thread
      (when (self.opt.accept record)
        (thread-send self.thread record))))
  interface: Logger)

(defmethod {__start LogRotateSink}
  (lambda (self)
    ;; prepare the log dir
    (unless (file-exists? self.opt.dir)
      (create-directory* self.opt.dir))
    ;; prepare the backlog
    (let* ((prefix (string-append self.opt.file "~"))
           (files  (directory-files self.opt.dir))
           (files  (filter-map
                    (lambda (f)
                      (let (f (path-expand f self.opt.dir))
                        (and (string-prefix? prefix f)
                             (cons f (file-info f)))))
                    files))
           (files (list-sort
                   (lambda ((a :- :pair) (b :- :pair))
                     (let ((tma (file-info-creation-time (cdr a)))
                           (tmb (file-info-creation-time (cdr b))))
                       (fl< (time->seconds tma)
                            (time->seconds tmb))))
                   files)))
      (for-each
        (lambda ((p :- :pair))
          (let ((file (car p))
                (size (file-info-size (cdr p))))
            (set! self.backlog (+ self.backlog size))
            (enqueue! self.backlogq (cons file size ))))
        files)
    ;; prepare the output file
    {self.__prepare})))

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
    (let* ((next-file       (path-with-timestamp self.path))
           (_               (move-file self.path next-file))
           (compressed-file (self.opt.compress next-file))
           (compressed-size (file-info-size (file-info compressed-file)))
           (backlog         (+ compressed-size self.backlog)))
      ;; remove the file if the compressor didn't
      (when (file-exists? next-file)
        (delete-file next-file))
      ;; adjust the backlog
      (enqueue! self.backlogq (cons compressed-file compressed-size))
      (let loop ((backlog backlog))
        (if (and (> backlog self.opt.backlog)
                 (non-empty-queue? self.backlogq))
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
            ((? Record? record)
             (let (wr (self.opt.write self.buffer record))
               (set! self.size (+ self.size wr))
               (when (> self.size self.opt.size)
                 {self.__rotate})))
            (#f
             (self.buffer.flush))
            ((!STOP)
             {self.__close}
             (exit 'STOP))
            (else
             (void))))))))

(@implement Logger LogRotateSink)
(@implement LogSink LogRotateSink)

(def (path-with-timestamp (path : :string))
  (string-append path "~" (number->string (CoarseTime-seconds (current-time-coarse)))))
