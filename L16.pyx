def _L16tl_level1(dict data, str text, list sb_list, str txend, int lword):
	text = text + txend
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1: 
					if word not in data: data[word] = 1
					else: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: 
					if lw > lword:
						if word[:lw-1] in data: data[word[:lw-1]] = data[word[:lw-1]] + 1
						elif word[1:lw] in data: data[word[1:lw]] = data[word[1:lw]] + 1
						elif word[1:lw-1] in data: data[word[1:lw-1]] = data[word[1:lw-1]] + 1
						else: data[word] = 1
					else: data[word] = 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def _L16tl_level2(dict data, str text, list sb_list, str txend, int lword):
	text = text + txend
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1: 
					if word not in data: data[word] = 1
					else: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: 
					if lw > lword:
						if word[:lw-1] in data: data[word[:lw-1]] = data[word[:lw-1]] + 1
						elif word[:lw-2] in data: data[word[:lw-2]] = data[word[:lw-2]] + 1
						elif word[1:lw] in data: data[word[1:lw]] = data[word[1:lw]] + 1
						elif word[2:lw] in data: data[word[2:lw]] = data[word[2:lw]] + 1
						elif word[1:lw-1] in data: data[word[1:lw-1]] = data[word[1:lw-1]] + 1
						elif word[2:lw-2] in data: data[word[2:lw-2]] = data[word[2:lw-2]] + 1
						elif word[2:lw-1] in data: data[word[2:lw-1]] = data[word[2:lw-1]] + 1
						elif word[1:lw-2] in data: data[word[1:lw-2]] = data[word[1:lw-2]] + 1
						else: data[word] = 1
					else: data[word] = 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def _L16tl_level3(dict data, str text, list sb_list, str txend, int lword):
	text = text + txend
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1: 
					if word not in data: data[word] = 1
					else: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: 
					if lw > lword:
						if word[:lw-1] in data: data[word[:lw-1]] = data[word[:lw-1]] + 1
						elif word[:lw-2] in data: data[word[:lw-2]] = data[word[:lw-2]] + 1
						elif word[:lw-3] in data: data[word[:lw-3]] = data[word[:lw-3]] + 1
						elif word[1:lw] in data: data[word[1:lw]] = data[word[1:lw]] + 1
						elif word[2:lw] in data: data[word[2:lw]] = data[word[2:lw]] + 1
						elif word[3:lw] in data: data[word[3:lw]] = data[word[3:lw]] + 1
						elif word[1:lw-1] in data: data[word[1:lw-1]] = data[word[1:lw-1]] + 1
						elif word[2:lw-2] in data: data[word[2:lw-2]] = data[word[2:lw-2]] + 1
						elif word[3:lw-3] in data: data[word[3:lw-3]] = data[word[3:lw-3]] + 1
						elif word[2:lw-1] in data: data[word[2:lw-1]] = data[word[2:lw-1]] + 1
						elif word[3:lw-1] in data: data[word[3:lw-1]] = data[word[3:lw-1]] + 1
						elif word[1:lw-2] in data: data[word[1:lw-2]] = data[word[1:lw-2]] + 1
						elif word[3:lw-2] in data: data[word[3:lw-2]] = data[word[3:lw-2]] + 1
						elif word[1:lw-3] in data: data[word[1:lw-3]] = data[word[1:lw-3]] + 1
						elif word[2:lw-3] in data: data[word[2:lw-3]] = data[word[2:lw-3]] + 1
						else: data[word] = 1
					else: data[word] = 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def _L16t(dict data, str text, list sb_list, str txend):
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text + txend:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1:
					if word not in data: data[word] = 1
					else: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: data[word] = 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def _L16tlu_level1(dict data, str text, list sb_list, str txend, int lword):
	text = text + txend
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1:
					if word in data: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: 
					if lw > lword:
						if word[:lw-1] in data: data[word[:lw-1]] = data[word[:lw-1]] + 1
						elif word[1:lw] in data: data[word[1:lw]] = data[word[1:lw]] + 1
						elif word[1:lw-1] in data: data[word[1:lw-1]] = data[word[1:lw-1]] + 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def _L16tlu_level2(dict data, str text, list sb_list, str txend, int lword):
	text = text + txend
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1:
					if word in data: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: 
					if lw > lword:
						if word[:lw-1] in data: data[word[:lw-1]] = data[word[:lw-1]] + 1
						elif word[:lw-2] in data: data[word[:lw-2]] = data[word[:lw-2]] + 1
						elif word[1:lw] in data: data[word[1:lw]] = data[word[1:lw]] + 1
						elif word[2:lw] in data: data[word[2:lw]] = data[word[2:lw]] + 1
						elif word[1:lw-1] in data: data[word[1:lw-1]] = data[word[1:lw-1]] + 1
						elif word[2:lw-2] in data: data[word[2:lw-2]] = data[word[2:lw-2]] + 1
						elif word[2:lw-1] in data: data[word[2:lw-1]] = data[word[2:lw-1]] + 1
						elif word[1:lw-2] in data: data[word[1:lw-2]] = data[word[1:lw-2]] + 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def _L16tlu_level3(dict data, str text, list sb_list, str txend, int lword):
	text = text + txend
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1:
					if word in data: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word not in data: 
					if lw > lword:
						if word[:lw-1] in data: data[word[:lw-1]] = data[word[:lw-1]] + 1
						elif word[:lw-2] in data: data[word[:lw-2]] = data[word[:lw-2]] + 1
						elif word[:lw-3] in data: data[word[:lw-3]] = data[word[:lw-3]] + 1
						elif word[1:lw] in data: data[word[1:lw]] = data[word[1:lw]] + 1
						elif word[2:lw] in data: data[word[2:lw]] = data[word[2:lw]] + 1
						elif word[3:lw] in data: data[word[3:lw]] = data[word[3:lw]] + 1
						elif word[1:lw-1] in data: data[word[1:lw-1]] = data[word[1:lw-1]] + 1
						elif word[2:lw-2] in data: data[word[2:lw-2]] = data[word[2:lw-2]] + 1
						elif word[3:lw-3] in data: data[word[3:lw-3]] = data[word[3:lw-3]] + 1
						elif word[2:lw-1] in data: data[word[2:lw-1]] = data[word[2:lw-1]] + 1
						elif word[3:lw-1] in data: data[word[3:lw-1]] = data[word[3:lw-1]] + 1
						elif word[1:lw-2] in data: data[word[1:lw-2]] = data[word[1:lw-2]] + 1
						elif word[3:lw-2] in data: data[word[3:lw-2]] = data[word[3:lw-2]] + 1
						elif word[1:lw-3] in data: data[word[1:lw-3]] = data[word[1:lw-3]] + 1
						elif word[2:lw-3] in data: data[word[2:lw-3]] = data[word[2:lw-3]] + 1
				else: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def _L16tu(dict data, str text, list sb_list, str txend):
	cdef str word = ""
	cdef str osb = ""
	cdef int osbm = 0
	cdef int lw = 0
	cdef str i

	for i in text + txend:
		if osb == i:
			word += i
			lw += 1
			osbm += 1
		else:
			if i not in sb_list:
				if osbm > 1:
					if word in data: data[word] = data[word] + 1
					word = ""
					lw = 0
				word += i
				lw += 1

			else:
				if word in data: data[word] = data[word] + 1
				word = ""
				lw = 0
				
			osbm = 0
		osb = i

	data.pop("", None)
	return data

def L16(str text, list sb_list, str txend="\n", int lword=6, str profile="t", object dtobj=None):
	cdef dict data
	
	if dtobj is None: data = {}
	else: data = dtobj
	if   profile == "tl1": return _L16tl_level1(data, text, sb_list, txend, lword)
	elif profile == "tl2": return _L16tl_level2(data, text, sb_list, txend, lword)
	elif profile == "tl3": return _L16tl_level3(data, text, sb_list, txend, lword)
	elif profile == "t": return _L16t(data, text, sb_list, txend)
	elif profile == "tlu1": return _L16tlu_level1(data, text, sb_list, txend, lword)
	elif profile == "tlu2": return _L16tlu_level2(data, text, sb_list, txend, lword)
	elif profile == "tlu3": return _L16tlu_level3(data, text, sb_list, txend, lword)
	elif profile == "tu": return _L16tu(data, text, sb_list, txend)
	else: print(f"not profile: {profile}")