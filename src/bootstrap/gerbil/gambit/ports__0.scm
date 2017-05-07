(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (begin)
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda2868128686_
           (lambda (_str28683_ _port28684_)
             (write-substring
              _str28683_
              '0
              (string-length _str28683_)
              _port28684_))))
      (lambda _g28696_
        (let ((_g28695_ (length _g28696_)))
          (cond ((fx= _g28695_ 1)
                 (apply (lambda (_str28689_)
                          (let ((_port28691_ (current-output-port)))
                            (_opt-lambda2868128686_ _str28689_ _port28691_)))
                        _g28696_))
                ((fx= _g28695_ 2)
                 (apply (lambda (_str28693_ _port28694_)
                          (_opt-lambda2868128686_ _str28693_ _port28694_))
                        _g28696_))
                (else (error "No clause matching arguments" _g28696_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda2866728672_
           (lambda (_str28669_ _port28670_)
             (read-substring
              _str28669_
              '0
              (string-length _str28669_)
              _port28670_))))
      (lambda _g28698_
        (let ((_g28697_ (length _g28698_)))
          (cond ((fx= _g28697_ 1)
                 (apply (lambda (_str28675_)
                          (let ((_port28677_ (current-input-port)))
                            (_opt-lambda2866728672_ _str28675_ _port28677_)))
                        _g28698_))
                ((fx= _g28697_ 2)
                 (apply (lambda (_str28679_ _port28680_)
                          (_opt-lambda2866728672_ _str28679_ _port28680_))
                        _g28698_))
                (else (error "No clause matching arguments" _g28698_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda2865328658_
           (lambda (_bytes28655_ _port28656_)
             (write-subu8vector
              _bytes28655_
              '0
              (u8vector-length _bytes28655_)
              _port28656_))))
      (lambda _g28700_
        (let ((_g28699_ (length _g28700_)))
          (cond ((fx= _g28699_ 1)
                 (apply (lambda (_bytes28661_)
                          (let ((_port28663_ (current-output-port)))
                            (_opt-lambda2865328658_ _bytes28661_ _port28663_)))
                        _g28700_))
                ((fx= _g28699_ 2)
                 (apply (lambda (_bytes28665_ _port28666_)
                          (_opt-lambda2865328658_ _bytes28665_ _port28666_))
                        _g28700_))
                (else (error "No clause matching arguments" _g28700_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda2863928644_
           (lambda (_bytes28641_ _port28642_)
             (read-subu8vector
              _bytes28641_
              '0
              (u8vector-length _bytes28641_)
              _port28642_))))
      (lambda _g28702_
        (let ((_g28701_ (length _g28702_)))
          (cond ((fx= _g28701_ 1)
                 (apply (lambda (_bytes28647_)
                          (let ((_port28649_ (current-input-port)))
                            (_opt-lambda2863928644_ _bytes28647_ _port28649_)))
                        _g28702_))
                ((fx= _g28701_ 2)
                 (apply (lambda (_bytes28651_ _port28652_)
                          (_opt-lambda2863928644_ _bytes28651_ _port28652_))
                        _g28702_))
                (else (error "No clause matching arguments" _g28702_)))))))
  (begin)
  (begin)
  (begin)
  (begin)
  (begin)
  (begin)
  (begin)
  (begin)
  (begin)
  (begin)
  (begin))
