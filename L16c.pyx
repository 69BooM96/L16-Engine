def L16c(str text, list sb_list, str txend):
	cdef dict data = {}

	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i, rw, lsb, lsbt, rsb, rsbt
	cdef int n, old_a, rs

	for i in text + txend:
		if osb == i:
			word += i
			lw += 1
			osbm = 1
		else:
			if i not in sb_list:
				if osbm and lw > 2: 
					if word[0] == word[-1]: word += word[-1]
					else: word += i
					if word not in data: data[word] = 1
					else: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: 
					rw = ""
					
					if lw > 6:
						if word[:lw-1] in data: rw = word[:lw-1]
						elif word[:lw-2] in data: rw = word[:lw-2]
						elif word[:lw-3] in data: rw = word[:lw-3]

						elif word[1:lw] in data: rw = word[1:lw]
						elif word[2:lw] in data: rw = word[2:lw]
						elif word[3:lw] in data: rw = word[3:lw]

						elif word[1:lw-1] in data: rw = word[1:lw-1]
						elif word[2:lw-2] in data: rw = word[2:lw-2]
						elif word[3:lw-3] in data: rw = word[3:lw-3]

						elif word[2:lw-1] in data: rw = word[2:lw-1]
						elif word[3:lw-1] in data: rw = word[3:lw-1]
						elif word[1:lw-2] in data: rw = word[1:lw-2]
						elif word[3:lw-2] in data: rw = word[3:lw-2]
						elif word[1:lw-3] in data: rw = word[1:lw-3]
						elif word[2:lw-3] in data: rw = word[2:lw-3]

					if rw != "": data[rw] = data[rw] + 1
					else: data[word] = 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data
