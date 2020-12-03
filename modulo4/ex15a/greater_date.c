int greater_date(unsigned int date1, unsigned int date2)
{
	short ano1 = (short) (date1 >> 8) | (date1 << (32-8)); // fica com o ano da primeira data
	short ano2 = (short) (date2 >> 8) | (date2 << (32-8)); // fica com o ano da segunda data
	
	if(ano1 > ano2)
	{
		return date1;
	}
	
	else if (ano1 < ano2)
	{
		return date2;
	}
	
	char mes1 = (char) (date1 >> 24) | (date1 << (32-24)); // fica com o mes da primeira data
	char mes2 = (char) (date2 >> 24) | (date2 << (32-24)); // fica com o mes da segunda data
	
	if (mes1 > mes2)
	{
		return date1;
	}
	
	else if (mes1 < mes2)
	{
		return date2;
	}
	
	char dia1 = (char) date1; // fica com o dia da primeira data
	char dia2 = (char) date2; // fica com o dia da segunda data
	
	if(dia1 > dia2)
	{
		return date1;
	}
	
	else if (dia1 < dia2)
	{
		return date2;
	}
	
	return date1;
}
