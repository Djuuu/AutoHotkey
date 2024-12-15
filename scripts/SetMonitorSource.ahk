;;;;;;;;;;;;;;; Monitor source toggle ;;;;;;;;;;;;;;;

#Include <Monitor>   ;;; Monitor config class
#Include <JXON>      ;;; JSON serializer

setMonitorSource(source, display := "")
{
	mon := Monitor()

	; moninfo := mon.GetInfo()
	; MsgBox Jxon_Dump(moninfo)

	; capabilities := mon.GetCapabilities(display)
	; MsgBox "Display Capabilities: " Jxon_Dump(capabilities)

	VCPCode := 0x60 ; Input Source Select

	; VCPFeature := mon.GetVCPFeatureAndReply(VCPCode, display)
	; MsgBox "VCP Input Source Select: " Jxon_Dump(VCPFeature)

	mon.SetVCPFeature(VCPCode, source, display)
}
