VERSION 5.00
Begin VB.Form frmRegTypeChecker 
   AutoRedraw      =   -1  'True
   Caption         =   "Registry Key Type Checker"
   ClientHeight    =   6588
   ClientLeft      =   120
   ClientTop       =   468
   ClientWidth     =   12480
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.4
      Charset         =   204
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmRegKeyChecker.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   6588
   ScaleWidth      =   12480
   Begin VB.Frame fraArea 
      Caption         =   "Area"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   7.8
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3612
      Left            =   5400
      TabIndex        =   26
      Top             =   2880
      Width           =   3132
      Begin VB.CheckBox chkNullKey 
         Caption         =   "Hidden keys (Null)"
         Height          =   204
         Left            =   240
         TabIndex        =   40
         Top             =   3240
         Value           =   1  'Checked
         Visible         =   0   'False
         Width           =   1692
      End
      Begin VB.CheckBox chkClass 
         Caption         =   "Class name"
         Height          =   252
         Left            =   240
         TabIndex        =   38
         Top             =   3000
         Value           =   1  'Checked
         Width           =   2772
      End
      Begin VB.CheckBox chkSecurityDescriptor 
         Caption         =   "Security descriptor"
         Height          =   252
         Left            =   240
         TabIndex        =   37
         Top             =   2760
         Value           =   1  'Checked
         Width           =   2772
      End
      Begin VB.CheckBox chkSymlink 
         Caption         =   "Symlink"
         Height          =   252
         Left            =   240
         TabIndex        =   36
         Top             =   2520
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkVolatility 
         Caption         =   "Volatility"
         Height          =   252
         Left            =   240
         TabIndex        =   35
         Top             =   2280
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkFlags 
         Caption         =   "Flags"
         Height          =   252
         Left            =   240
         TabIndex        =   34
         Top             =   2040
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkVirtualization 
         Caption         =   "Virtualization"
         Height          =   252
         Left            =   240
         TabIndex        =   33
         Top             =   1800
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkRedirection 
         Caption         =   "Redirection"
         Height          =   252
         Left            =   240
         TabIndex        =   32
         Top             =   1560
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkKeyLength 
         Caption         =   "Key/Values max length"
         Height          =   252
         Left            =   240
         TabIndex        =   31
         Top             =   1320
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkKeysCount 
         Caption         =   "Keys count"
         Height          =   252
         Left            =   240
         TabIndex        =   30
         Top             =   1080
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkDateModif 
         Caption         =   "Date of modification"
         Height          =   252
         Left            =   240
         TabIndex        =   29
         Top             =   840
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkNativeName 
         Caption         =   "Native name"
         Height          =   252
         Left            =   240
         TabIndex        =   28
         Top             =   600
         Value           =   1  'Checked
         Width           =   2652
      End
      Begin VB.CheckBox chkSelectAll 
         Caption         =   "Select all"
         Height          =   252
         Left            =   240
         TabIndex        =   27
         Top             =   240
         Value           =   1  'Checked
         Width           =   2652
      End
   End
   Begin VB.Frame fraMode 
      Caption         =   "Mode"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   7.8
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1332
      Left            =   8640
      TabIndex        =   19
      Top             =   4320
      Width           =   3735
      Begin VB.CheckBox chkQueryX32 
         Caption         =   "Query x32 view (additionally)"
         Height          =   492
         Left            =   240
         TabIndex        =   21
         Top             =   720
         Width           =   3372
      End
      Begin VB.CheckBox chkRecurse 
         Caption         =   "Recurse"
         Height          =   252
         Left            =   240
         TabIndex        =   20
         Top             =   360
         Width           =   3252
      End
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear list"
      Height          =   492
      Left            =   10800
      TabIndex        =   11
      Top             =   120
      Width           =   1572
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Close"
      Height          =   492
      Left            =   11040
      TabIndex        =   10
      Top             =   6000
      Width           =   1332
   End
   Begin VB.Frame fraReportFormat 
      Caption         =   "Report format"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   7.8
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1332
      Left            =   8640
      TabIndex        =   7
      Top             =   2880
      Width           =   3735
      Begin VB.OptionButton OptCSV 
         Caption         =   "CSV (Full log in ANSI)"
         Height          =   432
         Left            =   120
         TabIndex        =   9
         Top             =   720
         Value           =   -1  'True
         Width           =   2895
      End
      Begin VB.OptionButton optPlainText 
         Caption         =   "Plain Text (Short log in Unicode)"
         Height          =   492
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   3495
      End
   End
   Begin VB.Frame fraBeauty 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   7.8
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3612
      Left            =   240
      TabIndex        =   3
      Top             =   2880
      Width           =   5055
      Begin VB.CheckBox chkMatchCase 
         Caption         =   "Match case"
         Height          =   204
         Left            =   1920
         TabIndex        =   39
         Top             =   2640
         Width           =   2172
      End
      Begin VB.CheckBox chkRegExp 
         Caption         =   "Regular expressions"
         Height          =   204
         Left            =   360
         TabIndex        =   25
         Top             =   3000
         Width           =   2652
      End
      Begin VB.CheckBox chkOnce 
         Caption         =   "Once"
         Height          =   204
         Left            =   360
         TabIndex        =   24
         Top             =   2640
         Value           =   1  'Checked
         Width           =   1572
      End
      Begin VB.CommandButton cmdBeauty 
         Caption         =   "Extract"
         Height          =   492
         Left            =   3360
         TabIndex        =   18
         Top             =   3000
         Width           =   1452
      End
      Begin VB.TextBox txtReplaceInto 
         Height          =   285
         Left            =   3840
         TabIndex        =   16
         Text            =   "\"
         Top             =   2280
         Width           =   972
      End
      Begin VB.TextBox txtReplaceWhat 
         Height          =   285
         Left            =   2160
         TabIndex        =   15
         Text            =   "', '"
         Top             =   2280
         Width           =   972
      End
      Begin VB.TextBox txtBeautyEnd 
         Height          =   285
         Left            =   2160
         TabIndex        =   14
         Text            =   "'"
         Top             =   1680
         Width           =   972
      End
      Begin VB.CheckBox chkReplace 
         Caption         =   "Also replace:"
         Height          =   252
         Left            =   120
         TabIndex        =   13
         Top             =   2280
         Value           =   1  'Checked
         Width           =   1932
      End
      Begin VB.CheckBox chkBeautyEnd 
         Caption         =   "Ends with:"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   1680
         Value           =   1  'Checked
         Width           =   2172
      End
      Begin VB.CheckBox chkBeautyBegin 
         Caption         =   "Starts with:"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1320
         Value           =   1  'Checked
         Width           =   2052
      End
      Begin VB.TextBox txtBeautyBegin 
         Height          =   285
         Left            =   2160
         TabIndex        =   4
         Text            =   "'"
         Top             =   1320
         Width           =   972
      End
      Begin VB.Label lblBeautyDesc1 
         Caption         =   "You can paste keys in dirty format, then apply a parser with options below:"
         Height          =   492
         Left            =   120
         TabIndex        =   22
         Top             =   240
         Width           =   4812
      End
      Begin VB.Label lblWith 
         Caption         =   "with"
         Height          =   252
         Left            =   3240
         TabIndex        =   17
         Top             =   2280
         Width           =   372
      End
      Begin VB.Label lblBeautyDesc2 
         Caption         =   "Extract registry key from complex text/script, where key:"
         Height          =   492
         Left            =   120
         TabIndex        =   12
         Top             =   840
         Width           =   4812
      End
   End
   Begin VB.CommandButton cmdGo 
      Caption         =   "Go"
      Height          =   480
      Left            =   8640
      TabIndex        =   2
      Top             =   6000
      Width           =   1452
   End
   Begin VB.TextBox txtKeys 
      Height          =   2055
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Top             =   720
      Width           =   12132
   End
   Begin VB.Label lblProgress 
      Alignment       =   2  'Center
      Caption         =   "100 %"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   10.2
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   252
      Left            =   10200
      TabIndex        =   23
      Top             =   6120
      Width           =   732
   End
   Begin VB.Label lblThisTool 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "This tool creates report about registry keys such as: redirection type, volatility, virtualization and other"
      Height          =   408
      Left            =   240
      TabIndex        =   1
      Top             =   204
      Width           =   6972
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frmRegTypeChecker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'[frmRegTypeChecker.frm]

'
' Registry Key Type Checker by Alex Dragokas
'

'Structures:
'https://processhacker.sourceforge.io/doc/ntregapi_8h.html
'https://github.com/x64dbg/x64dbg/blob/development/src/dbg/ntdll/ntdll.h

'Flags:
'http://mygreenpaste.blogspot.com/2008/04/in-vista-how-does-flags-switch-of.html

'Redirection:
'https://www.cyberforum.ru/windows/thread1747714.html
'https://learn.microsoft.com/en-us/windows/win32/winprog64/registry-redirector
'https://learn.microsoft.com/en-us/windows/win32/winprog64/registry-reflection

'Volatility:
'https://learn.microsoft.com/en-us/dotnet/api/microsoft.win32.registryoptions?view=net-8.0

'Virtualization:
'https://learn.microsoft.com/en-us/previous-versions/dotnet/articles/bb530198(v=msdn.10)
'https://learn.microsoft.com/en-us/windows-hardware/drivers/ddi/ntddk/ns-ntddk-_key_virtualization_information

Option Explicit

Private Const STATUS_OK As String = "[OK]"
Private Const STATUS_ACCESS_DENIED As String = "[No Access]"
Private Const STATUS_NO_KEY As String = "[No Key]"
Private Const CSV_DELIM As String = ";"
Private Const TXT_DELIM As String = " | "
Private Const FLAGS_DELIM As String = "*"

Private Enum LOG_LEVEL
    LOG_LEVEL_NATIVE_KEY_NAME = 2 ^ 0
    LOG_LEVEL_DATE_MODIFIED = 2 ^ 1
    LOG_LEVEL_CLASSNAME = 2 ^ 2
    LOG_LEVEL_KEYS_COUNT = 2 ^ 3
    LOG_LEVEL_KEYVALUES_MAX_LENGTH = 2 ^ 4
    LOG_LEVEL_REDIRECTION = 2 ^ 5
    LOG_LEVEL_VIRTUALIZATION = 2 ^ 6
    LOG_LEVEL_FLAGS = 2 ^ 7
    LOG_LEVEL_VOLATILITY = 2 ^ 8
    LOG_LEVEL_SYMLINK = 2 ^ 9
    LOG_LEVEL_SECURITY_DESCRIPTOR = 2 ^ 10
End Enum

Private Type REG_KEY_INFO
    StatusText As String
    View32 As Boolean
    NativeKeyName As String
    DateModified As Date
    className As String
    numSubkeys As Long
    numValues As Long       'parameter
    maxSubkeyLen As Long
    maxValueLen As Long     'parameter
    maxValueDataLen As Long 'parameter contents
    Redirection As KEY_REDIRECTION_INFO
    RedirectionText As String
    Virtualization As KEY_VIRTUALIZATION_INFORMATION
    VirtualizationText As String
    Flags As KEY_FLAGS_INFORMATION
    FlagsControl2Text As String
    IsVolatile As Boolean
    IsSymlink As Boolean
    SymlinkTarget As String
    SecurityDescriptor As String
End Type

Private Enum REDIR_PRESENCE
    REDIR_PRESENCE_NATIVE = 1
    REDIR_PRESENCE_X32 = 2
End Enum

Private isRan           As Boolean
Private m_LogLevel      As Long
Private m_bRegExpInit   As Boolean
Private m_oRegexp       As IRegExp

Private Sub EraseKeyInfo(KeyInfo As REG_KEY_INFO)
    Dim ki As REG_KEY_INFO
    KeyInfo = ki
End Sub

Private Sub GetKeyInfo(KeyInfo As REG_KEY_INFO, ByVal sKey As String, bView32 As Boolean)
    
    On Error GoTo ErrorHandler:
    Dim hKey            As Long
    Dim lret            As Long
    Dim fTime           As FILETIME
    Dim SysTime         As SYSTEMTIME
    Dim cchClassLen     As Long
    Dim hHive           As Long

    Call Reg.NormalizeKeyNameAndHiveHandle(hHive, sKey)
    
    lret = RegOpenKeyEx(hHive, StrPtr(sKey), 0&, KEY_QUERY_VALUE Or (bIsWOW64 And KEY_WOW64_64KEY And Not bView32), hKey)
    
    If ERROR_SUCCESS = lret Then
        
        KeyInfo.className = String$(cchClassLen, 0)
        cchClassLen = Len(KeyInfo.className)
        
        lret = RegQueryInfoKey( _
            hKey, _
            ByVal 0&, ByVal 0&, _
            0&, _
            KeyInfo.numSubkeys, KeyInfo.maxSubkeyLen, _
            ByVal 0&, _
            KeyInfo.numValues, KeyInfo.maxValueLen, _
            KeyInfo.maxValueDataLen, _
            ByVal 0&, _
            fTime)
        
        If ERROR_SUCCESS = lret Then
            lret = FileTimeToLocalFileTime(fTime, fTime)
            lret = FileTimeToSystemTime(fTime, SysTime)
            SystemTimeToVariantTime SysTime, KeyInfo.DateModified
            If KeyInfo.maxValueDataLen <> 0 Then
                KeyInfo.maxValueDataLen = (KeyInfo.maxValueDataLen - 2) \ 2 'Bytes => Characters
            End If
        End If
        
        If ERROR_MORE_DATA = RegQueryInfoKey(hKey, StrPtr(KeyInfo.className), cchClassLen, 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&) Then
            KeyInfo.className = String$(cchClassLen, 0)
            Call RegQueryInfoKey(hKey, StrPtr(KeyInfo.className), cchClassLen, 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&, ByVal 0&)
        End If
        
        KeyInfo.StatusText = STATUS_OK
    Else
        If lret = ERROR_ACCESS_DENIED Then
            KeyInfo.StatusText = STATUS_ACCESS_DENIED
        ElseIf lret = ERROR_FILE_NOT_FOUND Then
            KeyInfo.StatusText = STATUS_NO_KEY
        Else
            KeyInfo.StatusText = "Code: " & lret
        End If
    End If
    
    If bView32 Then
        KeyInfo.Redirection = KEY_REDIRECTION_NO_KEY 'it just make no sense for x32 view
    Else
        KeyInfo.Redirection = Reg.GetKeyRedirectionType(hHive, sKey, True, KeyInfo.SymlinkTarget)
        'skip "< Win7" rule to ensure
        Dim iReflectionDisabled As Long
        lret = RegQueryReflectionKey(hKey, iReflectionDisabled)
        If lret = ERROR_SUCCESS Then
            If iReflectionDisabled = 0 Then
                KeyInfo.Redirection = KeyInfo.Redirection Or KEY_REDIRECTION_REFLECTED
            End If
        End If
    End If
    KeyInfo.RedirectionText = KeyRedirectionTypeToString(KeyInfo.Redirection)
    
    If (hKey <> 0&) Then RegCloseKey hKey: hKey = 0
    
    KeyInfo.SecurityDescriptor = GetKeyStringSD(hHive, sKey, bView32)
    
    lret = Reg.WrapNtOpenKeyEx(hHive, sKey, WRITE_OWNER, hKey, , bView32)
    If STATUS_SUCCESS = lret Then
        Dim reqSize As Long
    
        KeyInfo.NativeKeyName = Reg.RegGetKeyInfoNameEx(hKey)
        
        lret = NtQueryKey(hKey, KeyVirtualizationInformation, ByVal VarPtr(KeyInfo.Virtualization), LenB(KeyInfo.Virtualization), reqSize)
        
        If OSver.IsWindows7OrGreater Then
            
            lret = NtQueryKey(hKey, KeyFlagsInformation, ByVal VarPtr(KeyInfo.Flags), LenB(KeyInfo.Flags), reqSize)
        End If
        
        NtClose hKey
    End If
    KeyInfo.FlagsControl2Text = KeyFlagsToString(KeyInfo.Flags)
    KeyInfo.VirtualizationText = VirtualizationInfoToString(KeyInfo.Virtualization)
    
    KeyInfo.IsSymlink = (KeyInfo.Flags.ControlFlags1 And KEY_CTRL_FL_W7_01__SYM_LINK)
    KeyInfo.IsVolatile = (KeyInfo.Flags.ControlFlags1 And KEY_CTRL_FL_W7_01__IS_VOLATILE)
    
    Exit Sub
ErrorHandler:
    ErrorMsg Err, "GetKeyInfo", "Key:", sKey
    If (hKey <> 0&) Then RegCloseKey hKey
    If inIDE Then Stop: Resume Next
End Sub

Private Function VirtualizationInfoToString(VirtInfo As KEY_VIRTUALIZATION_INFORMATION) As String
    Dim s$
    If VirtInfo.VirtualizationCandidate <> 0 Then s = s & "Candidate" & FLAGS_DELIM
    If VirtInfo.VirtualizationEnabled <> 0 Then s = s & "Enabled" & FLAGS_DELIM
    If VirtInfo.VirtualTarget <> 0 Then s = s & "Target" & FLAGS_DELIM
    If VirtInfo.VirtualStore <> 0 Then s = s & "Store" & FLAGS_DELIM
    If VirtInfo.VirtualSource <> 0 Then s = s & "Source" & FLAGS_DELIM
    If Len(s) <> 0 Then s = Left$(s, Len(s) - Len(FLAGS_DELIM))
    VirtualizationInfoToString = s
End Function

Private Function KeyFlagsToString(Flags As KEY_FLAGS_INFORMATION) As String
    Dim s$
    Dim flagsCtrl2 As KEY_CTRL_FL_W7_02
    flagsCtrl2 = Flags.ControlFlags2
    If flagsCtrl2 And RegKeyClearFlags Then flagsCtrl2 = flagsCtrl2 - RegKeyClearFlags: s = s & "Clear" & FLAGS_DELIM
    If flagsCtrl2 And RegKeyDontVirtualize Then flagsCtrl2 = flagsCtrl2 - RegKeyDontVirtualize: s = s & "DontVirtualize" & FLAGS_DELIM
    If flagsCtrl2 And RegKeyDontSilentFail Then flagsCtrl2 = flagsCtrl2 - RegKeyDontSilentFail: s = s & "DontSilentFail" & FLAGS_DELIM
    If flagsCtrl2 And RegKeyRecurseFlag Then flagsCtrl2 = flagsCtrl2 - RegKeyRecurseFlag: s = s & "Recurse" & FLAGS_DELIM
    If flagsCtrl2 <> 0 Then s = s & "Flag:" & flagsCtrl2 & FLAGS_DELIM
    If Len(s) <> 0 Then s = Left$(s, Len(s) - Len(FLAGS_DELIM))
    KeyFlagsToString = s
End Function

Private Function KeyRedirectionTypeToString(RedirType As KEY_REDIRECTION_INFO) As String
    Dim s$
    If RedirType And KEY_REDIRECTION_NOT_APPLIED Then s = s & "Not applied" & FLAGS_DELIM
    If RedirType And KEY_REDIRECTION_SHARED Then s = s & "Shared" & FLAGS_DELIM
    If RedirType And KEY_REDIRECTION_SYMLINK Then s = s & "Symlink" & FLAGS_DELIM
    If RedirType And KEY_REDIRECTION_WOW_AVAILABLE Then s = s & "WOW Available" & FLAGS_DELIM
    If RedirType And KEY_REDIRECTION_REFLECTED Then s = s & "Reflected" & FLAGS_DELIM
    If Len(s) <> 0 Then s = Left$(s, Len(s) - Len(FLAGS_DELIM))
    KeyRedirectionTypeToString = s
End Function

Private Sub AppendKeyToLog(sb As clsStringBuilder, bCSV As Boolean, KeyInfo As REG_KEY_INFO, sKey As String, bRedir As Boolean)
    Dim delim As String: delim = IIf(bCSV, CSV_DELIM, TXT_DELIM)
    
    sb.Append KeyInfo.StatusText
    sb.Append delim & sKey
    sb.Append delim & IIf(OSver.IsWin32, "x32", IIf(bRedir, "x32", "x64"))
    
    If m_LogLevel And LOG_LEVEL_NATIVE_KEY_NAME Then sb.Append delim & KeyInfo.NativeKeyName
    If m_LogLevel And LOG_LEVEL_DATE_MODIFIED Then sb.Append delim & DateTimeToStringUS(KeyInfo.DateModified)
    If m_LogLevel And LOG_LEVEL_KEYS_COUNT Then
        sb.Append delim & KeyInfo.numSubkeys
        sb.Append delim & KeyInfo.numValues
    End If
    If m_LogLevel And LOG_LEVEL_KEYVALUES_MAX_LENGTH Then
        sb.Append delim & KeyInfo.maxSubkeyLen
        sb.Append delim & KeyInfo.maxValueLen
        sb.Append delim & KeyInfo.maxValueDataLen
    End If
    If m_LogLevel And LOG_LEVEL_REDIRECTION Then sb.Append delim & KeyInfo.RedirectionText
    If m_LogLevel And LOG_LEVEL_VIRTUALIZATION Then sb.Append delim & KeyInfo.VirtualizationText
    If m_LogLevel And LOG_LEVEL_FLAGS Then sb.Append delim & KeyInfo.FlagsControl2Text
    If m_LogLevel And LOG_LEVEL_VOLATILITY Then sb.Append delim & IIf(KeyInfo.IsVolatile, "Volatile", "No")
    If m_LogLevel And LOG_LEVEL_SYMLINK Then sb.Append delim & KeyInfo.SymlinkTarget
    If m_LogLevel And LOG_LEVEL_SECURITY_DESCRIPTOR Then sb.Append delim & """" & KeyInfo.SecurityDescriptor & """"
    If m_LogLevel And LOG_LEVEL_CLASSNAME Then sb.Append delim & KeyInfo.className
    sb.AppendLine ""
End Sub

Private Sub AddLogHeader(sb As clsStringBuilder, bCSV As Boolean)
    Dim s$
    Dim delim As String: delim = IIf(bCSV, CSV_DELIM, TXT_DELIM)
    s = "Status"
    s = s & delim & "Key"
    s = s & delim & "View"
    If m_LogLevel And LOG_LEVEL_NATIVE_KEY_NAME Then s = s & delim & "NT name"
    If m_LogLevel And LOG_LEVEL_DATE_MODIFIED Then s = s & delim & "Date modified"
    If m_LogLevel And LOG_LEVEL_KEYS_COUNT Then
        s = s & delim & "Subkeys Count"
        s = s & delim & "Values Count"
    End If
    If m_LogLevel And LOG_LEVEL_KEYVALUES_MAX_LENGTH Then
        s = s & delim & "Subkey Max Length"
        s = s & delim & "Value Max Length"
        s = s & delim & "Data Max Length"
    End If
    If m_LogLevel And LOG_LEVEL_REDIRECTION Then s = s & delim & "Redirection"
    If m_LogLevel And LOG_LEVEL_VIRTUALIZATION Then s = s & delim & "Virtualization"
    If m_LogLevel And LOG_LEVEL_FLAGS Then s = s & delim & "Flags"
    If m_LogLevel And LOG_LEVEL_VOLATILITY Then s = s & delim & "Volatility"
    If m_LogLevel And LOG_LEVEL_SYMLINK Then s = s & delim & "Symlink"
    If m_LogLevel And LOG_LEVEL_SECURITY_DESCRIPTOR Then s = s & delim & "Security Descriptor"
    If m_LogLevel And LOG_LEVEL_CLASSNAME Then s = s & delim & "Class"
    If bCSV Then
        sb.AppendLine s
    Else
        sb.AppendLine ChrW$(-257) & "Logfile of Registry Key Type Analyzer (HJT+ v." & AppVerString & ")" & vbCrLf & vbCrLf & _
            MakeLogHeader() & vbCrLf & _
            s & vbCrLf
    End If
End Sub

Private Sub chkReplace_Click()
    Dim bEnabled As Boolean
    bEnabled = (chkReplace.Value = vbChecked)
    chkOnce.Enabled = bEnabled
    txtReplaceWhat.Enabled = bEnabled
    txtReplaceInto.Enabled = bEnabled
    chkRegExp.Enabled = bEnabled
    chkMatchCase.Enabled = bEnabled
End Sub

Private Sub SelAll(bValue As Boolean)
    Dim iValue As Long: iValue = IIf(bValue, vbChecked, vbUnchecked)
    chkNativeName.Value = iValue
    chkDateModif.Value = iValue
    chkKeysCount.Value = iValue
    chkKeyLength.Value = iValue
    chkRedirection.Value = iValue
    chkVirtualization.Value = iValue
    chkFlags.Value = iValue
    chkVolatility.Value = iValue
    chkSymlink.Value = iValue
    chkSecurityDescriptor.Value = iValue
    chkClass.Value = iValue
End Sub

Private Sub chkSelectAll_Click()
    SelAll (chkSelectAll.Value = vbChecked)
End Sub

Private Sub RefreshLogLevel()

    m_LogLevel = 0
    If chkNativeName.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_NATIVE_KEY_NAME
    If chkDateModif.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_DATE_MODIFIED
    If chkKeysCount.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_KEYS_COUNT
    If chkKeyLength.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_KEYVALUES_MAX_LENGTH
    If chkRedirection.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_REDIRECTION
    If chkVirtualization.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_VIRTUALIZATION
    If chkFlags.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_FLAGS
    If chkVolatility.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_VOLATILITY
    If chkSymlink.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_SYMLINK
    If chkSecurityDescriptor.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_SECURITY_DESCRIPTOR
    If chkClass.Value = vbChecked Then m_LogLevel = m_LogLevel Or LOG_LEVEL_CLASSNAME
    
End Sub
    

Private Sub cmdGo_Click()
    On Error GoTo ErrorHandler:
    
    Dim aPathes()       As String:  Dim bCSV            As Boolean
    Dim sPathes         As String:  Dim bPlainText      As Boolean
    Dim aKeys()         As String:  Dim bRecursively    As Boolean
    Dim sKey            As String:  Dim bQueryX32       As Boolean
    Dim vKey            As Variant: Dim ReportPath      As String
    Dim hFile&, i&, k&, iRedir&
    Dim sb              As clsStringBuilder
    Dim oDictKeys       As clsTrickHashTable
    Dim delim           As String
    Dim bLogWritten     As Boolean
    
    RefreshLogLevel
    
    If isRan Then Exit Sub
    isRan = True
    
    Set sb = New clsStringBuilder
    Set oDictKeys = New clsTrickHashTable
    oDictKeys.CompareMode = vbTextCompare
    
    LockUI True
    
    'Get options
    bCSV = OptCSV.Value               'CSV (in ANSI)
    delim = IIf(bCSV, ";", " | ")
    bPlainText = optPlainText.Value   'Plain (in Unicode)
    bRecursively = chkRecurse.Value
    bQueryX32 = chkQueryX32.Value
    
    sPathes = txtKeys.Text
    sPathes = Replace$(sPathes, vbCr, vbNullString)
    aPathes = Split(sPathes, vbLf)
    RegPathNormalizeArray aPathes
    
    ReportPath = BuildPath(App.Path(), "RegKeyType") & IIf(bCSV, ".csv", ".log")
    If FileExists(ReportPath) Then Call DeleteFileW(StrPtr(ReportPath))
    
    AddLogHeader sb, bCSV
    
    For i = 0 To UBound(aPathes)
        For iRedir = 0 To IIf(bQueryX32, 1, 0)
            DoEvents
            If Reg.KeyExists(0, aPathes(i), CBool(iRedir)) Then
                Erase aKeys
                
                sKey = aPathes(i)
                If Not oDictKeys.Exists(sKey) Then
                    oDictKeys.Add sKey, IIf(iRedir, REDIR_PRESENCE_X32, REDIR_PRESENCE_NATIVE)
                Else
                    oDictKeys(sKey) = oDictKeys(sKey) Or IIf(iRedir, REDIR_PRESENCE_X32, REDIR_PRESENCE_NATIVE)
                End If
                
                If bRecursively Then
                    Dim hHive As ENUM_REG_HIVE
                    For k = 1 To Reg.EnumSubKeysToArray(hHive, aPathes(i), aKeys, CBool(iRedir), , bRecursively)
                        sKey = Reg.GetHiveNameByHandle(hHive) & "\" & aKeys(k)
                        If Not oDictKeys.Exists(sKey) Then
                            oDictKeys.Add sKey, IIf(iRedir, REDIR_PRESENCE_X32, REDIR_PRESENCE_NATIVE)
                        Else
                            oDictKeys(sKey) = oDictKeys(sKey) Or IIf(iRedir, REDIR_PRESENCE_X32, REDIR_PRESENCE_NATIVE)
                        End If
                        If Not isRan Then
                            LockUI False
                            Exit Sub
                        End If
                    Next
                End If
            Else 'not exist or access denied
                sb.Append IIf(Reg.StatusCode = ERROR_ACCESS_DENIED, STATUS_ACCESS_DENIED, STATUS_NO_KEY)
                sb.Append delim & aPathes(i)
                sb.AppendLine delim & IIf(OSver.IsWin32, "x32", IIf(CBool(iRedir), "x32", "x64"))
                bLogWritten = True
            End If
        Next
    Next
    
    If oDictKeys.Count = 0 Then
        If bLogWritten Then GoTo label_Report
        'You should enter at least one key!
        MsgBoxW Translate(1905), vbExclamation
        LockUI False
        isRan = False
        Exit Sub
    End If
    
    lblProgress.Caption = "0 %"

    Dim iCount As Long
    Dim iRedirCount As Long
    Dim eRedirPresence As REDIR_PRESENCE
    Dim KeyInfo As REG_KEY_INFO
    
    For Each vKey In oDictKeys.Keys
        sKey = vKey
        eRedirPresence = oDictKeys(sKey)
        iRedirCount = 0
        If eRedirPresence And REDIR_PRESENCE_NATIVE Then iRedirCount = iRedirCount + 1
        If eRedirPresence And REDIR_PRESENCE_X32 Then iRedirCount = iRedirCount + 1
        
        For i = 0 To iRedirCount - 1
            DoEvents
            
            If iRedirCount = 2 Then
                iRedir = i
            Else
                iRedir = IIf(CBool(eRedirPresence And REDIR_PRESENCE_X32), 1, 0)
            End If
            
            If Not isRan Then
                LockUI False
                Exit Sub
            End If
            
            EraseKeyInfo KeyInfo
            GetKeyInfo KeyInfo, sKey, CBool(iRedir)
            AppendKeyToLog sb, bCSV, KeyInfo, sKey, CBool(iRedir)
            
            iCount = iCount + 1
            lblProgress.Caption = CStr(Int(iCount / oDictKeys.Count * 100&)) & " %"
        Next
    Next
    
    DoEvents

label_Report:
    Dim bData() As Byte
    If bCSV Then
        bData() = StrConv(sb.ToString, vbFromUnicode)
    Else
        sb.Append vbCrLf & "--" & vbCrLf & "End of file"
        bData() = sb.ToString
    End If

    isRan = False
    LockUI False
    lblProgress.Caption = vbNullString

ReportRepeat:
    If OpenW(ReportPath, FOR_OVERWRITE_CREATE, hFile, g_FileBackupFlag) Then
        PutW hFile, 1&, VarPtr(bData(0)), UBound(bData) + 1, doAppend:=True
        CloseW hFile, True
    Else
        If hFile <= 0 Then
            'Cannot write report file. Write access is restricted by another program. Repeat?
            If MsgBoxW(Translate(1869) & vbCrLf & vbCrLf & ReportPath, vbYesNo Or vbExclamation) = vbYes Then GoTo ReportRepeat
            Exit Sub
        End If
    End If

    OpenLogFile ReportPath

    Exit Sub
ErrorHandler:
    ErrorMsg Err, "frmRegTypeChecker.cmdGo_Click"
    If inIDE Then Stop: Resume Next
    If Not inIDE Then
        isRan = False
        LockUI False
    End If
    CloseW hFile, True
End Sub

Private Sub cmdExit_Click()
    If isRan Then
        isRan = False
    Else
        Me.Hide
    End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 27 Then cmdExit_Click
    ProcessHotkey KeyCode, Me
End Sub

Private Sub Form_Load()
    Dim OptB As OptionButton
    Dim Ctl As Control

    LoadWindowPos Me, SETTINGS_SECTION_REGKEYTYPECHECKER

    SetAllFontCharset Me, g_FontName, g_FontSize, g_bFontBold
    Call ReloadLanguage(True)

    If bIsWinXP Then
        For Each Ctl In Me.Controls
            If TypeName(Ctl) = "OptionButton" Then
                Set OptB = Ctl
                SetWindowTheme OptB.hwnd, StrPtr(" "), StrPtr(" ")
            End If
        Next
        Set OptB = Nothing
    End If
    
    If OSver.IsWin32 Then
        chkQueryX32.Value = vbUnchecked
        chkQueryX32.Enabled = False
    End If
    lblProgress.Caption = vbNullString
    
    SubClassTextbox Me.txtKeys.hwnd, True
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    SaveWindowPos Me, SETTINGS_SECTION_REGKEYTYPECHECKER

    If UnloadMode = 0 Then 'initiated by user (clicking 'X')
        If isRan Then
            isRan = False
            Cancel = True
            Me.Hide
        Else
            Cancel = True
            Me.Hide
        End If
    Else
        SubClassTextbox Me.txtKeys.hwnd, False
    End If
End Sub

Private Sub Form_Resize()

    If Me.WindowState = vbMinimized Then Exit Sub

    Dim TopLevel1&, TopLevel2&

    If Me.Width < 9396 Then Me.Width = 9396
    If Me.Height < 5208 Then Me.Height = 5208

    txtKeys.Width = Me.Width - 550
    txtKeys.Height = Me.Height - 4950

    TopLevel1 = txtKeys.Top + txtKeys.Height
    TopLevel2 = TopLevel1 + 1380
    
    fraArea.Top = TopLevel1
    fraBeauty.Top = TopLevel1
    fraReportFormat.Top = TopLevel1
    fraMode.Top = TopLevel2
    
    cmdGo.Top = TopLevel1 + fraArea.Height - cmdGo.Height - 25
    cmdExit.Top = TopLevel1 + fraArea.Height - cmdExit.Height - 25
    lblProgress.Top = cmdGo.Top + cmdGo.Height \ 2 - lblProgress.Height \ 2
    
    cmdClear.Left = txtKeys.Width - cmdClear.Width + 200
End Sub

Private Sub txtPaths_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 27 Then cmdExit_Click
End Sub

Private Sub cmdClear_Click()
    txtKeys.Text = vbNullString
End Sub

Private Function RegPathNormalize(sPath As String) As String
    Dim pos As Long
    sPath = Trim$(sPath)
    If Left$(sPath, 1) = """" Then
        pos = InStr(2, sPath, """")
        If pos <> 0 Then
            sPath = mid$(sPath, 2, pos - 2)
        Else
            sPath = mid$(sPath, 2)
        End If
    End If
    If InStr(sPath, "/") <> 0 Then
        sPath = Replace$(sPath, "/", "\")      'path altered by / chars instead of \
    End If
    sPath = Replace$(sPath, "\\", "\")
    RegPathNormalize = sPath
End Function

Private Sub RegPathNormalizeArray(aPathes() As String)
    Dim i As Long
    For i = 0 To UBound(aPathes)
        aPathes(i) = RegPathNormalize(aPathes(i))
    Next
End Sub

Private Function RegPathBeauty(sPath As String) As String
    On Error GoTo ErrorHandler:
    Dim pos As Long
    Dim bOnce As Boolean: bOnce = (chkOnce.Value = vbChecked)

    If chkReplace.Value Then
        sPath = Replace$(sPath, txtReplaceWhat.Text, txtReplaceInto.Text, 1, IIf(bOnce, 1, -1), _
            IIf(chkMatchCase.Value = vbChecked, vbBinaryCompare, vbTextCompare))
    End If
    If chkBeautyBegin.Value Then
        pos = InStr(1, sPath, txtBeautyBegin.Text, vbTextCompare)
        If pos <> 0 Then
            sPath = mid$(sPath, pos + Len(txtBeautyBegin.Text))
        End If
    End If
    If chkBeautyEnd.Value Then
        pos = InStr(1, sPath, txtBeautyEnd.Text, vbTextCompare)
        If pos <> 0 Then
            sPath = Left$(sPath, pos - Len(txtBeautyBegin.Text))
        End If
    End If
    RegPathBeauty = sPath
    Exit Function
ErrorHandler:
    ErrorMsg Err, "frmRegTypeChecker.RegPathBeauty"
    If inIDE Then Stop: Resume Next
End Function

Private Sub cmdBeauty_Click()
    On Error GoTo ErrorHandler:

    Dim sPathes As String
    Dim aPathes() As String
    Dim i As Long
    
    sPathes = txtKeys.Text
    
    If chkRegExp.Value = vbChecked Then
        sPathes = ReplaceRegex(sPathes, txtReplaceWhat.Text, txtReplaceInto.Text)
    End If
    
    sPathes = Replace$(sPathes, vbCr, vbNullString)
    aPathes = Split(sPathes, vbLf)

    For i = 0 To UBound(aPathes)
        aPathes(i) = RegPathBeauty(aPathes(i))
    Next

    txtKeys.Text = Join(aPathes, vbCrLf)

    Exit Sub
ErrorHandler:
    ErrorMsg Err, "frmRegTypeChecker.cmdBeauty_Click"
    If inIDE Then Stop: Resume Next
End Sub

Private Sub LockUI(bLock As Boolean)
    cmdGo.Enabled = Not bLock
    txtKeys.Enabled = Not bLock
End Sub

Private Sub InitRegexp()
    If Not m_bRegExpInit Then
        Set m_oRegexp = New cRegExp
        m_bRegExpInit = True
        m_oRegexp.MultiLine = True
    End If
    m_oRegexp.IgnoreCase = (IIf(chkMatchCase.Value = vbChecked, vbBinaryCompare, vbTextCompare))
    m_oRegexp.Global = Not (chkOnce.Value = vbChecked)
End Sub

Private Function CheckRegexpSyntax() As Boolean
    On Error Resume Next
    Call m_oRegexp.Test(vbNullString)
    If Err.Number = 0 Then
        CheckRegexpSyntax = True
    Else
        MsgSyntaxError
    End If
End Function

Private Sub MsgSyntaxError()
    MsgBoxW Translate(2312), vbExclamation, Translate(2300)
End Sub

Private Function ReplaceRegex(sText As String, sWhat As String, sInto As String) As String
    On Error GoTo ErrorHandler:
    InitRegexp
    m_oRegexp.Pattern = sWhat
    If CheckRegexpSyntax() Then
        ReplaceRegex = m_oRegexp.Replace(sText, sInto)
    End If
    Exit Function
ErrorHandler:
    ErrorMsg Err, "frmRegTypeChecker.ReplaceRegex"
    If inIDE Then Stop: Resume Next
End Function
