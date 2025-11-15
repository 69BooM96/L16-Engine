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

def _L16compression(dict data, int lword, int lvl):
	cdef dict res = {}

	for i in data:
		lw = len(i)

		if i in res: res[i] = res[i] + data[i]
		else:
			new_tk = False
			for num in range(1, lvl+1):
				if lw-num > lword:
					if i[:-num] in data: 
						res[i[:-num]] = res.get(i[:-num], 0) + data[i]
						new_tk = True
					elif i[num:] in data: 
						res[i[num:]] = res.get(i[num:], 0) + data[i]
						new_tk = True
					elif i[num:-num] in data: 
						res[i[num:-num]] = res.get(i[num:-num], 0) + data[i]
						new_tk = True
				else: break
			if not new_tk: res[i] = data[i]
	return res

def _L16clear(dict data, list sb_list):
	cdef dict res = {}

	for i in data:
		dt = data[i]
		for sb in sb_list:
			i = i.replace(sb, "")

		if i in res: res[i] = res[i]+dt
		else: res[i] = dt

	return res

PROFILES = {
	"t": _L16t,
	"tu": _L16tu,
	"tl1": _L16tl_level1,
	"tl2": _L16tl_level2,
	"tl3": _L16tl_level3,
	"tlu1": _L16tlu_level1,
	"tlu2": _L16tlu_level2,
	"tlu3": _L16tlu_level3,
	"c": _L16compression,
	"clear": _L16clear
}

def L16(str text=None, list sb_list=None, str txend="\n", int lword=6, str profile="None", object dtobj=None, int lvl=4):
	cdef dict data
	
	if dtobj is None: data = {}
	else: data = dtobj

	handler = PROFILES.get(profile)

	if not handler:
		raise ValueError(f"Unknown or unsupported profile: {profile}")

	if profile == 'c':
		return handler(data, lword, lvl)

	elif profile in ["t", "tu"]:
		return handler(data, text, sb_list, txend)

	elif profile == "clear":
		return handler(data, sb_list)

	else:
		return handler(data, text, sb_list, txend, lword)