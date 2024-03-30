(define (problem analisisMinerales)
	(:domain rover)
	(:objects 
	amarillo verde - mineral 
	L1 L2 L3 L4 L5 - localizacion 
	r - rover )
	
	(:init 
	(mineral-en-l L1 amarillo) 
	(mineral-en-l L2 verde) 
	(rover-en-l L4 r) 
	(rover-vacio)
	(laboratorio-en L5) 
	(ir L1 L3)
	(ir L3 L1)
	(ir L2 L4)
	(ir L3 L2)
	(ir L3 L4)
	(ir L4 L3)
	(ir L4 L5)
	(ir L5 L4)
	)
	(:goal (and 
	(mineral-en-l L5 amarillo) 
	(mineral-en-l L5 verde))
	)
)