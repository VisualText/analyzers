/*******************************************************************************
Copyright (c) 1998,1999 by Text Analysis Ualgoational, Inc.
All rights reserved.  No part of this document may be copied, used, or
modified without written permission from Text Analysis International, Inc.
********************************************************************************
*
* NAME:	UALGO.CPP
* FILE:	c:\dev\nlplite\ualgo.cpp
* CR:		12/04/98 AM.
* SUBJ:	Sample user-defined analysis algorithm.
* NOTE:	1/29/02 AM. OBSOLETE STUFF.
*
*******************************************************************************/

#include <stdlib.h>
#include <iostream>											// Upgrade.	// 02/08/01 AM.
using namespace std;											// Upgrade.	// 02/08/01 AM.
#include <ctype.h>
#include <string.h>
#ifdef UNICODE
#include <sstream>		// 01/24/2005 SRP
#else
#include <strstream>		// 05/25/01 AM.
#endif

//#include "parse.h"
//#include "seqn.h"
#include "Ualgo.h"



/******************************************************************************/
