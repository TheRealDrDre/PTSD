(ql:quickload "split-sequence")
(push :actr-fast *features*)
(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/andrea/Documents/Research/PTSD/fast/ptsd.lisp")
(let ((sim (make-instance 'simulation)))
  (setf (n sim) 50)
  (setf (ptev sim) '(60))
  (setf (ptes sim) '(0.25))
  (setf (event-frequency sim) 20)
  (setf (rumination-frequency sim) 0)
  (setf (num-attributes sim) 4)
  (setf (num-slots sim) 8)
  (setf (gamma sim) 0.95)
  (setf (gethash :imaginal-activation (model-params sim)) 8.0)
  (setf (gethash :bll (model-params sim)) 0.5)
  (setf (gethash :rt (model-params sim)) 0.0)
  (setf (logfile sim) "bll-0.5_rt-0.0_w-8.0_attributes-4_ef-20_gamma-0.95_n-50_ptes-0.25_ptev-60_rf-0_slots-8.csv")
  (run-simulations sim))
(quit)
