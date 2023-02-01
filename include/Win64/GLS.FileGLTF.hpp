﻿// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'GLS.FileGLTF.pas' rev: 35.00 (Windows)

#ifndef Gls_FilegltfHPP
#define Gls_FilegltfHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <GLS.PersistentClasses.hpp>
#include <GLS.VectorFileObjects.hpp>
#include <GLS.Texture.hpp>
#include <GLS.ApplicationFileIO.hpp>
#include <GLS.VectorTypes.hpp>
#include <GLS.VectorLists.hpp>
#include <GLS.VectorGeometry.hpp>
#include <GLS.Material.hpp>
#include <GLS.Utils.hpp>
#include <PasGLTF.hpp>
#include <GLS.BaseClasses.hpp>

//-- user supplied -----------------------------------------------------------

namespace Gls
{
namespace Filegltf
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TGLglTFVectorFile;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TGLglTFVectorFile : public Gls::Vectorfileobjects::TGLVectorFile
{
	typedef Gls::Vectorfileobjects::TGLVectorFile inherited;
	
public:
	__classmethod virtual Gls::Applicationfileio::TGLDataFileCapabilities __fastcall Capabilities();
	virtual void __fastcall LoadFromStream(System::Classes::TStream* aStream);
	virtual void __fastcall SaveToStream(System::Classes::TStream* aStream);
public:
	/* TGLVectorFile.Create */ inline __fastcall virtual TGLglTFVectorFile(System::Classes::TPersistent* AOwner) : Gls::Vectorfileobjects::TGLVectorFile(AOwner) { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TGLglTFVectorFile() { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE bool glTFUseEmbeddedColors;
}	/* namespace Filegltf */
}	/* namespace Gls */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_GLS_FILEGLTF)
using namespace Gls::Filegltf;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_GLS)
using namespace Gls;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Gls_FilegltfHPP
