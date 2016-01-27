(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (begin)
  (define gerbil/gambit/ports#write-string
    (let ((_opt-lambda4729647301_
           (lambda (_str47298_ _port47299_)
             (write-substring
              _str47298_
              '0
              (string-length _str47298_)
              _port47299_))))
      (lambda _g47311_
        (let ((_g47310_ (length _g47311_)))
          (cond ((fx= _g47310_ 1)
                 (apply (lambda (_str47304_)
                          (let ((_port47306_ (current-output-port)))
                            (_opt-lambda4729647301_ _str47304_ _port47306_)))
                        _g47311_))
                ((fx= _g47310_ 2)
                 (apply (lambda (_str47308_ _port47309_)
                          (_opt-lambda4729647301_ _str47308_ _port47309_))
                        _g47311_))
                (else (error "No clause matching arguments" _g47311_)))))))
  (define gerbil/gambit/ports#read-string
    (let ((_opt-lambda4728247287_
           (lambda (_str47284_ _port47285_)
             (read-substring
              _str47284_
              '0
              (string-length _str47284_)
              _port47285_))))
      (lambda _g47313_
        (let ((_g47312_ (length _g47313_)))
          (cond ((fx= _g47312_ 1)
                 (apply (lambda (_str47290_)
                          (let ((_port47292_ (current-input-port)))
                            (_opt-lambda4728247287_ _str47290_ _port47292_)))
                        _g47313_))
                ((fx= _g47312_ 2)
                 (apply (lambda (_str47294_ _port47295_)
                          (_opt-lambda4728247287_ _str47294_ _port47295_))
                        _g47313_))
                (else (error "No clause matching arguments" _g47313_)))))))
  (define gerbil/gambit/ports#write-u8vector
    (let ((_opt-lambda4726847273_
           (lambda (_bytes47270_ _port47271_)
             (write-subu8vector
              _bytes47270_
              '0
              (u8vector-length _bytes47270_)
              _port47271_))))
      (lambda _g47315_
        (let ((_g47314_ (length _g47315_)))
          (cond ((fx= _g47314_ 1)
                 (apply (lambda (_bytes47276_)
                          (let ((_port47278_ (current-output-port)))
                            (_opt-lambda4726847273_ _bytes47276_ _port47278_)))
                        _g47315_))
                ((fx= _g47314_ 2)
                 (apply (lambda (_bytes47280_ _port47281_)
                          (_opt-lambda4726847273_ _bytes47280_ _port47281_))
                        _g47315_))
                (else (error "No clause matching arguments" _g47315_)))))))
  (define gerbil/gambit/ports#read-u8vector
    (let ((_opt-lambda4725447259_
           (lambda (_bytes47256_ _port47257_)
             (read-subu8vector
              _bytes47256_
              '0
              (u8vector-length _bytes47256_)
              _port47257_))))
      (lambda _g47317_
        (let ((_g47316_ (length _g47317_)))
          (cond ((fx= _g47316_ 1)
                 (apply (lambda (_bytes47262_)
                          (let ((_port47264_ (current-input-port)))
                            (_opt-lambda4725447259_ _bytes47262_ _port47264_)))
                        _g47317_))
                ((fx= _g47316_ 2)
                 (apply (lambda (_bytes47266_ _port47267_)
                          (_opt-lambda4725447259_ _bytes47266_ _port47267_))
                        _g47317_))
                (else (error "No clause matching arguments" _g47317_)))))))
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
