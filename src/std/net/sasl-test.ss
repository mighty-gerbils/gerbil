;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SASL test vectors

(import :std/test
        :std/net/sasl)
(export sasl-test)

(def sasl-test
  (test-suite "test :std/net/sasl"

    (def (check-scram-method scram-begin user pass r cfm sfm csm ssm)
      (def ctx (scram-begin user pass))
      (check (scram-client-first-message ctx r) => cfm)
      (check (scram-client-first-server-message! ctx sfm) ? void?)
      (check (scram-client-final-message ctx) => csm)
      (check (scram-client-final-server-message! ctx ssm) ? void?))

    (test-case "test SCRAM-SHA-1"
      ;; RFC 5802 test vector
      (check-scram-method
       scram-sha-1-begin
       "user" "pencil"
       "fyko+d2lbbFgONRv9qkxdawL"
       "n,,n=user,r=fyko+d2lbbFgONRv9qkxdawL"
       "r=fyko+d2lbbFgONRv9qkxdawL3rfcNHYJY1ZVvWVs7j,s=QSXCR+Q6sek8bf92,i=4096"
       "c=biws,r=fyko+d2lbbFgONRv9qkxdawL3rfcNHYJY1ZVvWVs7j,p=v0X8v3Bz2T0CJGbJQyF0X+HI4Ts="
       "v=rmF9pqV8S7suAoZWja4dJRkFsKQ="
       ))

    (test-case "test SCRAM-SHA-256"
      ;; RFC 7677 test vector
      (check-scram-method
       scram-sha-256-begin
       "user" "pencil"
       "rOprNGfwEbeRWgbNEkqO"
       "n,,n=user,r=rOprNGfwEbeRWgbNEkqO"
       "r=rOprNGfwEbeRWgbNEkqO%hvYDpWUa2RaTCAfuxFIlj)hNlF$k0,s=W22ZaJ0SNY7soEsUEjb6gQ==,i=4096"
       "c=biws,r=rOprNGfwEbeRWgbNEkqO%hvYDpWUa2RaTCAfuxFIlj)hNlF$k0,p=dHzbZapWIk4jUhN+Ute9ytag9zjfMHgsqmmiz7AndVQ="
       "v=6rriTRBi23WpRR/wtup+mMhUZUn/dB5nLTJRsjl95G4="
       ))))
