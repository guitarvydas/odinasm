; ModuleID = 'odin_package'
source_filename = "odin_package"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%runtime.Type_Info = type { i64, i64, i32, [4 x i8], i64, { [15 x i64], i64 } }
%..string = type { i8*, i64 }
%runtime.Default_Temp_Allocator = type { %runtime.Arena }
%runtime.Arena = type { %runtime.Allocator, %runtime.Memory_Block*, i64, i64, i64, i64 }
%runtime.Allocator = type { i8*, i8* }
%runtime.Memory_Block = type { %runtime.Memory_Block*, %runtime.Allocator, i8*, i64, i64 }
%runtime.Type_Info_Named = type { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }
%runtime.Source_Code_Location = type { %..string, i32, i32, %..string }
%runtime.Type_Info_Struct = type { { %runtime.Type_Info**, i64 }, { %..string*, i64 }, { i64*, i64 }, { i8*, i64 }, { %..string*, i64 }, i8, i8, i8, i8, [4 x i8], i8*, i8, [7 x i8], %runtime.Type_Info*, i64 }
%runtime.Type_Info_Pointer = type { %runtime.Type_Info* }
%runtime.Type_Info_Integer = type { i8, i8 }
%runtime.Type_Info_Bit_Set = type { %runtime.Type_Info*, %runtime.Type_Info*, i64, i64 }
%runtime.Type_Info_Enum = type { %runtime.Type_Info*, { %..string*, i64 }, { i64*, i64 } }
%runtime.Type_Info_Union = type { { %runtime.Type_Info**, i64 }, i64, %runtime.Type_Info*, i8*, i8, i8, i8, [5 x i8] }
%runtime.Type_Info_Slice = type { %runtime.Type_Info*, i64 }
%runtime.Type_Info_Procedure = type { %runtime.Type_Info*, %runtime.Type_Info*, i8, i8, [6 x i8] }
%runtime.Type_Info_Parameters = type { { %runtime.Type_Info**, i64 }, { %..string*, i64 } }
%runtime.Raw_String = type { i8*, i64 }
%runtime.Context = type { %runtime.Allocator, %runtime.Allocator, i8*, %runtime.Logger, i8*, i64, i8* }
%runtime.Logger = type { i8*, i8*, i64, i16, [6 x i8] }
%..any = type { i8*, i64 }
%__gnu_h2f_ieee.fp32-1 = type { i32 }
%runtime.Raw_Slice = type { i8*, i64 }

@"__$type_info_data" = internal global [103 x %runtime.Type_Info] zeroinitializer
@"__$type_info_types_data" = internal global [119 x %runtime.Type_Info*] zeroinitializer
@"__$type_info_names_data" = internal global [119 x %..string] zeroinitializer
@"__$type_info_offsets_data" = internal global [119 x i64] zeroinitializer
@"__$type_info_usings_data" = internal global [119 x i8] zeroinitializer
@"__$type_info_tags_data" = internal global [119 x %..string] zeroinitializer
@runtime.type_table = internal global { %runtime.Type_Info*, i64 } { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 0), i64 103 }, !dbg !0
@runtime.args__ = internal global { i8**, i64 } zeroinitializer, !dbg !12
@runtime.global_default_temp_allocator_data = internal thread_local global %runtime.Default_Temp_Allocator zeroinitializer, !dbg !15
@os.stderr = internal global i32 2, !dbg !85
@runtime._INTEGER_DIGITS_VAR-505 = internal global %..string { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"csbs$0", i64 0, i64 0), i64 36 }, !dbg !89
@"csbs$0" = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@"csbs$1" = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@"csbs$2" = private unnamed_addr constant [50 x i8] c"/Users/tarvydas/tools/Odin/core/runtime/core.odin\00", align 1
@"csbs$3" = private unnamed_addr constant [10 x i8] c"Type_Info\00", align 1
@"ggv$0" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$3", i64 0, i64 0), i64 9 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 7), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 190, i32 1, %..string zeroinitializer } }
@"csbs$4" = private unnamed_addr constant [5 x i8] c"size\00", align 1
@"csbs$5" = private unnamed_addr constant [6 x i8] c"align\00", align 1
@"csbs$6" = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@"csbs$7" = private unnamed_addr constant [3 x i8] c"id\00", align 1
@"csbs$8" = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@"ggv$1" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 0), i64 5 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 0), i64 5 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 0), i64 5 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 0), i64 5 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 0), i64 5 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$9" = private unnamed_addr constant [16 x i8] c"Type_Info_Flags\00", align 1
@"ggv$2" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"csbs$9", i64 0, i64 0), i64 15 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 9), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 188, i32 1, %..string zeroinitializer } }
@"csbs$a" = private unnamed_addr constant [15 x i8] c"Type_Info_Flag\00", align 1
@"ggv$3" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"csbs$a", i64 0, i64 0), i64 14 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 11), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 184, i32 1, %..string zeroinitializer } }
@"$enum_names-11" = private unnamed_addr constant [2 x %..string] [%..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$b", i64 0, i64 0), i64 10 }, %..string { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"csbs$c", i64 0, i64 0), i64 14 }]
@"$enum_values-11" = private unnamed_addr constant [2 x i64] [i64 0, i64 1]
@"csbs$b" = private unnamed_addr constant [11 x i8] c"Comparable\00", align 1
@"csbs$c" = private unnamed_addr constant [15 x i8] c"Simple_Compare\00", align 1
@"csbs$d" = private unnamed_addr constant [16 x i8] c"Type_Info_Named\00", align 1
@"ggv$4" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"csbs$d", i64 0, i64 0), i64 15 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 17), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 64, i32 1, %..string zeroinitializer } }
@"csbs$e" = private unnamed_addr constant [5 x i8] c"name\00", align 1
@"csbs$f" = private unnamed_addr constant [5 x i8] c"base\00", align 1
@"csbs$10" = private unnamed_addr constant [4 x i8] c"pkg\00", align 1
@"csbs$11" = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@"ggv$5" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 33), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 5), i64 4 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 5), i64 4 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 5), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 5), i64 4 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* bitcast (i8 (i8*, i8*)* @"__$equal1" to i8*), i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$12" = private unnamed_addr constant [21 x i8] c"Source_Code_Location\00", align 1
@"ggv$6" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"csbs$12", i64 0, i64 0), i64 20 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 21), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 291, i32 1, %..string zeroinitializer } }
@"csbs$13" = private unnamed_addr constant [10 x i8] c"file_path\00", align 1
@"csbs$14" = private unnamed_addr constant [5 x i8] c"line\00", align 1
@"csbs$15" = private unnamed_addr constant [7 x i8] c"column\00", align 1
@"csbs$16" = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@"ggv$7" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 37), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 9), i64 4 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 9), i64 4 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 9), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 9), i64 4 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* bitcast (i8 (i8*, i8*)* @"__$equal2" to i8*), i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$17" = private unnamed_addr constant [18 x i8] c"Type_Info_Integer\00", align 1
@"ggv$8" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$17", i64 0, i64 0), i64 17 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 24), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 70, i32 1, %..string zeroinitializer } }
@"csbs$18" = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@"csbs$19" = private unnamed_addr constant [11 x i8] c"endianness\00", align 1
@"ggv$9" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 41), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 13), i64 2 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 13), i64 2 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 13), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 13), i64 2 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$1a" = private unnamed_addr constant [20 x i8] c"Platform_Endianness\00", align 1
@"ggv$a" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"csbs$1a", i64 0, i64 0), i64 19 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 27), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 45, i32 1, %..string zeroinitializer } }
@"$enum_names-27" = private unnamed_addr constant [3 x %..string] [%..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$1b", i64 0, i64 0), i64 8 }, %..string { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"csbs$1c", i64 0, i64 0), i64 6 }, %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$1d", i64 0, i64 0), i64 3 }]
@"$enum_values-27" = private unnamed_addr constant [3 x i64] [i64 0, i64 1, i64 2]
@"csbs$1b" = private unnamed_addr constant [9 x i8] c"Platform\00", align 1
@"csbs$1c" = private unnamed_addr constant [7 x i8] c"Little\00", align 1
@"csbs$1d" = private unnamed_addr constant [4 x i8] c"Big\00", align 1
@"csbs$1e" = private unnamed_addr constant [15 x i8] c"Type_Info_Rune\00", align 1
@"ggv$b" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"csbs$1e", i64 0, i64 0), i64 14 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 71, i32 1, %..string zeroinitializer } }
@"csbs$1f" = private unnamed_addr constant [16 x i8] c"Type_Info_Float\00", align 1
@"ggv$c" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"csbs$1f", i64 0, i64 0), i64 15 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 31), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 72, i32 1, %..string zeroinitializer } }
@"ggv$d" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 43), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 15), i64 1 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 15), i64 1 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 15), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 15), i64 1 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$20" = private unnamed_addr constant [18 x i8] c"Type_Info_Complex\00", align 1
@"ggv$e" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$20", i64 0, i64 0), i64 17 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 73, i32 1, %..string zeroinitializer } }
@"csbs$21" = private unnamed_addr constant [21 x i8] c"Type_Info_Quaternion\00", align 1
@"ggv$f" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"csbs$21", i64 0, i64 0), i64 20 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 74, i32 1, %..string zeroinitializer } }
@"csbs$22" = private unnamed_addr constant [17 x i8] c"Type_Info_String\00", align 1
@"ggv$10" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"csbs$22", i64 0, i64 0), i64 16 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 35), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 75, i32 1, %..string zeroinitializer } }
@"csbs$23" = private unnamed_addr constant [11 x i8] c"is_cstring\00", align 1
@"ggv$11" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 44), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 16), i64 1 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 16), i64 1 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 16), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 16), i64 1 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$24" = private unnamed_addr constant [18 x i8] c"Type_Info_Boolean\00", align 1
@"ggv$12" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$24", i64 0, i64 0), i64 17 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 76, i32 1, %..string zeroinitializer } }
@"csbs$25" = private unnamed_addr constant [14 x i8] c"Type_Info_Any\00", align 1
@"ggv$13" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"csbs$25", i64 0, i64 0), i64 13 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 77, i32 1, %..string zeroinitializer } }
@"csbs$26" = private unnamed_addr constant [18 x i8] c"Type_Info_Type_Id\00", align 1
@"ggv$14" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$26", i64 0, i64 0), i64 17 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 78, i32 1, %..string zeroinitializer } }
@"csbs$27" = private unnamed_addr constant [18 x i8] c"Type_Info_Pointer\00", align 1
@"ggv$15" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$27", i64 0, i64 0), i64 17 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 79, i32 1, %..string zeroinitializer } }
@"csbs$28" = private unnamed_addr constant [5 x i8] c"elem\00", align 1
@"ggv$16" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 45), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 17), i64 1 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 17), i64 1 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 17), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 17), i64 1 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$29" = private unnamed_addr constant [24 x i8] c"Type_Info_Multi_Pointer\00", align 1
@"ggv$17" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"csbs$29", i64 0, i64 0), i64 23 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 82, i32 1, %..string zeroinitializer } }
@"csbs$2a" = private unnamed_addr constant [20 x i8] c"Type_Info_Procedure\00", align 1
@"ggv$18" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"csbs$2a", i64 0, i64 0), i64 19 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 43), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 85, i32 1, %..string zeroinitializer } }
@"csbs$2b" = private unnamed_addr constant [7 x i8] c"params\00", align 1
@"csbs$2c" = private unnamed_addr constant [8 x i8] c"results\00", align 1
@"csbs$2d" = private unnamed_addr constant [9 x i8] c"variadic\00", align 1
@"csbs$2e" = private unnamed_addr constant [11 x i8] c"convention\00", align 1
@"ggv$19" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 46), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 18), i64 4 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 18), i64 4 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 18), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 18), i64 4 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$2f" = private unnamed_addr constant [19 x i8] c"Calling_Convention\00", align 1
@"ggv$1a" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"csbs$2f", i64 0, i64 0), i64 18 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 45), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 26, i32 1, %..string zeroinitializer } }
@"$enum_names-45" = private unnamed_addr constant [10 x %..string] [%..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$30", i64 0, i64 0), i64 7 }, %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$31", i64 0, i64 0), i64 4 }, %..string { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"csbs$32", i64 0, i64 0), i64 11 }, %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$33", i64 0, i64 0), i64 5 }, %..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$34", i64 0, i64 0), i64 8 }, %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$35", i64 0, i64 0), i64 9 }, %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$36", i64 0, i64 0), i64 4 }, %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$37", i64 0, i64 0), i64 5 }, %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$38", i64 0, i64 0), i64 5 }, %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$39", i64 0, i64 0), i64 4 }]
@"$enum_values-45" = private unnamed_addr constant [10 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10]
@"csbs$30" = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@"csbs$31" = private unnamed_addr constant [5 x i8] c"Odin\00", align 1
@"csbs$32" = private unnamed_addr constant [12 x i8] c"Contextless\00", align 1
@"csbs$33" = private unnamed_addr constant [6 x i8] c"CDecl\00", align 1
@"csbs$34" = private unnamed_addr constant [9 x i8] c"Std_Call\00", align 1
@"csbs$35" = private unnamed_addr constant [10 x i8] c"Fast_Call\00", align 1
@"csbs$36" = private unnamed_addr constant [5 x i8] c"None\00", align 1
@"csbs$37" = private unnamed_addr constant [6 x i8] c"Naked\00", align 1
@"csbs$38" = private unnamed_addr constant [6 x i8] c"Win64\00", align 1
@"csbs$39" = private unnamed_addr constant [5 x i8] c"SysV\00", align 1
@"csbs$3a" = private unnamed_addr constant [16 x i8] c"Type_Info_Array\00", align 1
@"ggv$1b" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"csbs$3a", i64 0, i64 0), i64 15 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 91, i32 1, %..string zeroinitializer } }
@"csbs$3b" = private unnamed_addr constant [10 x i8] c"elem_size\00", align 1
@"csbs$3c" = private unnamed_addr constant [6 x i8] c"count\00", align 1
@"ggv$1c" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 50), i64 3 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 22), i64 3 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 22), i64 3 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 22), i64 3 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 22), i64 3 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$3d" = private unnamed_addr constant [27 x i8] c"Type_Info_Enumerated_Array\00", align 1
@"ggv$1d" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"csbs$3d", i64 0, i64 0), i64 26 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 49), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 96, i32 1, %..string zeroinitializer } }
@"csbs$3e" = private unnamed_addr constant [6 x i8] c"index\00", align 1
@"csbs$3f" = private unnamed_addr constant [10 x i8] c"min_value\00", align 1
@"csbs$40" = private unnamed_addr constant [10 x i8] c"max_value\00", align 1
@"csbs$41" = private unnamed_addr constant [10 x i8] c"is_sparse\00", align 1
@"ggv$1e" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 53), i64 7 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 25), i64 7 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 25), i64 7 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 25), i64 7 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 25), i64 7 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$42" = private unnamed_addr constant [21 x i8] c"Type_Info_Enum_Value\00", align 1
@"ggv$1f" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"csbs$42", i64 0, i64 0), i64 20 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 43, i32 1, %..string zeroinitializer } }
@"csbs$43" = private unnamed_addr constant [24 x i8] c"Type_Info_Dynamic_Array\00", align 1
@"ggv$20" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"csbs$43", i64 0, i64 0), i64 23 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 105, i32 1, %..string zeroinitializer } }
@"ggv$21" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 60), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 32), i64 2 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 32), i64 2 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 32), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 32), i64 2 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$44" = private unnamed_addr constant [16 x i8] c"Type_Info_Slice\00", align 1
@"ggv$22" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"csbs$44", i64 0, i64 0), i64 15 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 106, i32 1, %..string zeroinitializer } }
@"csbs$45" = private unnamed_addr constant [21 x i8] c"Type_Info_Parameters\00", align 1
@"ggv$23" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"csbs$45", i64 0, i64 0), i64 20 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 56), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 108, i32 1, %..string zeroinitializer } }
@"csbs$46" = private unnamed_addr constant [6 x i8] c"types\00", align 1
@"csbs$47" = private unnamed_addr constant [6 x i8] c"names\00", align 1
@"ggv$24" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 62), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 34), i64 2 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 34), i64 2 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 34), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 34), i64 2 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$48" = private unnamed_addr constant [17 x i8] c"Type_Info_Struct\00", align 1
@"ggv$25" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"csbs$48", i64 0, i64 0), i64 16 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 62), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 114, i32 1, %..string zeroinitializer } }
@"csbs$49" = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@"csbs$4a" = private unnamed_addr constant [7 x i8] c"usings\00", align 1
@"csbs$4b" = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@"csbs$4c" = private unnamed_addr constant [10 x i8] c"is_packed\00", align 1
@"csbs$4d" = private unnamed_addr constant [13 x i8] c"is_raw_union\00", align 1
@"csbs$4e" = private unnamed_addr constant [11 x i8] c"is_no_copy\00", align 1
@"csbs$4f" = private unnamed_addr constant [13 x i8] c"custom_align\00", align 1
@"csbs$50" = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@"csbs$51" = private unnamed_addr constant [9 x i8] c"soa_kind\00", align 1
@"csbs$52" = private unnamed_addr constant [14 x i8] c"soa_base_type\00", align 1
@"csbs$53" = private unnamed_addr constant [8 x i8] c"soa_len\00", align 1
@"ggv$26" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 64), i64 13 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 36), i64 13 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 36), i64 13 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 36), i64 13 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 36), i64 13 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$54" = private unnamed_addr constant [11 x i8] c"Equal_Proc\00", align 1
@"ggv$27" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$54", i64 0, i64 0), i64 10 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 69), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 52, i32 1, %..string zeroinitializer } }
@"csbs$55" = private unnamed_addr constant [2 x i8] c"_\00", align 1
@"csbs$56" = private unnamed_addr constant [26 x i8] c"Type_Info_Struct_Soa_Kind\00", align 1
@"ggv$28" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"csbs$56", i64 0, i64 0), i64 25 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 73), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 56, i32 1, %..string zeroinitializer } }
@"$enum_names-73" = private unnamed_addr constant [4 x %..string] [%..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$36", i64 0, i64 0), i64 4 }, %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$57", i64 0, i64 0), i64 5 }, %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$58", i64 0, i64 0), i64 5 }, %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$59", i64 0, i64 0), i64 7 }]
@"$enum_values-73" = private unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 3]
@"csbs$57" = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@"csbs$58" = private unnamed_addr constant [6 x i8] c"Slice\00", align 1
@"csbs$59" = private unnamed_addr constant [8 x i8] c"Dynamic\00", align 1
@"csbs$5a" = private unnamed_addr constant [16 x i8] c"Type_Info_Union\00", align 1
@"ggv$29" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"csbs$5a", i64 0, i64 0), i64 15 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 75), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 132, i32 1, %..string zeroinitializer } }
@"csbs$5b" = private unnamed_addr constant [9 x i8] c"variants\00", align 1
@"csbs$5c" = private unnamed_addr constant [11 x i8] c"tag_offset\00", align 1
@"csbs$5d" = private unnamed_addr constant [9 x i8] c"tag_type\00", align 1
@"csbs$5e" = private unnamed_addr constant [7 x i8] c"no_nil\00", align 1
@"csbs$5f" = private unnamed_addr constant [11 x i8] c"shared_nil\00", align 1
@"ggv$2a" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 80), i64 7 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 52), i64 7 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 49), i64 7 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 49), i64 7 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 49), i64 7 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$60" = private unnamed_addr constant [15 x i8] c"Type_Info_Enum\00", align 1
@"ggv$2b" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"csbs$60", i64 0, i64 0), i64 14 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 77), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 143, i32 1, %..string zeroinitializer } }
@"csbs$61" = private unnamed_addr constant [7 x i8] c"values\00", align 1
@"ggv$2c" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 87), i64 3 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 59), i64 3 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 56), i64 3 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 56), i64 3 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 56), i64 3 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$62" = private unnamed_addr constant [14 x i8] c"Type_Info_Map\00", align 1
@"ggv$2d" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"csbs$62", i64 0, i64 0), i64 13 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 81), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 148, i32 1, %..string zeroinitializer } }
@"csbs$63" = private unnamed_addr constant [4 x i8] c"key\00", align 1
@"csbs$64" = private unnamed_addr constant [6 x i8] c"value\00", align 1
@"csbs$65" = private unnamed_addr constant [9 x i8] c"map_info\00", align 1
@"ggv$2e" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 90), i64 3 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 62), i64 3 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 59), i64 3 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 59), i64 3 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 59), i64 3 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$66" = private unnamed_addr constant [66 x i8] c"/Users/tarvydas/tools/Odin/core/runtime/dynamic_map_internal.odin\00", align 1
@"csbs$67" = private unnamed_addr constant [9 x i8] c"Map_Info\00", align 1
@"ggv$2f" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$67", i64 0, i64 0), i64 8 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 84), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @"csbs$66", i64 0, i64 0), i64 65 }, i32 300, i32 1, %..string zeroinitializer } }
@"csbs$68" = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@"csbs$69" = private unnamed_addr constant [3 x i8] c"vs\00", align 1
@"csbs$6a" = private unnamed_addr constant [11 x i8] c"key_hasher\00", align 1
@"csbs$6b" = private unnamed_addr constant [10 x i8] c"key_equal\00", align 1
@"ggv$30" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 93), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 65), i64 4 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 62), i64 4 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 62), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 62), i64 4 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$6c" = private unnamed_addr constant [14 x i8] c"Map_Cell_Info\00", align 1
@"ggv$31" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"csbs$6c", i64 0, i64 0), i64 13 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 87), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @"csbs$66", i64 0, i64 0), i64 65 }, i32 99, i32 1, %..string zeroinitializer } }
@"csbs$6d" = private unnamed_addr constant [13 x i8] c"size_of_type\00", align 1
@"csbs$6e" = private unnamed_addr constant [14 x i8] c"align_of_type\00", align 1
@"csbs$6f" = private unnamed_addr constant [13 x i8] c"size_of_cell\00", align 1
@"csbs$70" = private unnamed_addr constant [18 x i8] c"elements_per_cell\00", align 1
@"ggv$32" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 97), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 69), i64 4 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 66), i64 4 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 66), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 66), i64 4 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$71" = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@"csbs$72" = private unnamed_addr constant [4 x i8] c"lhs\00", align 1
@"csbs$73" = private unnamed_addr constant [4 x i8] c"rhs\00", align 1
@"csbs$74" = private unnamed_addr constant [18 x i8] c"Type_Info_Bit_Set\00", align 1
@"ggv$33" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$74", i64 0, i64 0), i64 17 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 94), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 153, i32 1, %..string zeroinitializer } }
@"csbs$75" = private unnamed_addr constant [11 x i8] c"underlying\00", align 1
@"csbs$76" = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@"csbs$77" = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@"ggv$34" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 106), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 78), i64 4 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 70), i64 4 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 70), i64 4 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 70), i64 4 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$78" = private unnamed_addr constant [22 x i8] c"Type_Info_Simd_Vector\00", align 1
@"ggv$35" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"csbs$78", i64 0, i64 0), i64 21 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 159, i32 1, %..string zeroinitializer } }
@"csbs$79" = private unnamed_addr constant [27 x i8] c"Type_Info_Relative_Pointer\00", align 1
@"ggv$36" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"csbs$79", i64 0, i64 0), i64 26 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 97), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 164, i32 1, %..string zeroinitializer } }
@"csbs$7a" = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@"csbs$7b" = private unnamed_addr constant [13 x i8] c"base_integer\00", align 1
@"ggv$37" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 110), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 82), i64 2 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 74), i64 2 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 74), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 74), i64 2 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$7c" = private unnamed_addr constant [25 x i8] c"Type_Info_Relative_Slice\00", align 1
@"ggv$38" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"csbs$7c", i64 0, i64 0), i64 24 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 99), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 168, i32 1, %..string zeroinitializer } }
@"csbs$7d" = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@"ggv$39" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 112), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 84), i64 2 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 76), i64 2 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 76), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 76), i64 2 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$7e" = private unnamed_addr constant [17 x i8] c"Type_Info_Matrix\00", align 1
@"ggv$3a" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"csbs$7e", i64 0, i64 0), i64 16 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 101), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 172, i32 1, %..string zeroinitializer } }
@"csbs$7f" = private unnamed_addr constant [12 x i8] c"elem_stride\00", align 1
@"csbs$80" = private unnamed_addr constant [10 x i8] c"row_count\00", align 1
@"csbs$81" = private unnamed_addr constant [13 x i8] c"column_count\00", align 1
@"ggv$3b" = private unnamed_addr constant %runtime.Type_Info_Struct { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 114), i64 5 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 86), i64 5 }, { i64*, i64 } { i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 78), i64 5 }, { i8*, i64 } { i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 78), i64 5 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_tags_data", i64 0, i64 78), i64 5 }, i8 0, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, i8* null, i8 0, [7 x i8] zeroinitializer, %runtime.Type_Info* null, i64 0 }
@"csbs$82" = private unnamed_addr constant [22 x i8] c"Type_Info_Soa_Pointer\00", align 1
@"ggv$3c" = private unnamed_addr constant %runtime.Type_Info_Named { %..string { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"csbs$82", i64 0, i64 0), i64 21 }, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40), %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$1", i64 0, i64 0), i64 7 }, %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"csbs$2", i64 0, i64 0), i64 49 }, i32 180, i32 1, %..string zeroinitializer } }
@"csbs$83" = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@"csbs$84" = private unnamed_addr constant [70 x i8] c"/Users/tarvydas/tools/Odin/core/runtime/default_allocators_arena.odin\00", align 1
@"csbs$85" = private unnamed_addr constant [19 x i8] c"memory_block_alloc\00", align 1
@"ggv$3d" = private unnamed_addr constant %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"csbs$84", i64 0, i64 0), i64 69 }, i32 45, i32 2, %..string { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"csbs$85", i64 0, i64 0), i64 18 } }
@"ggv$3e" = private unnamed_addr constant %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"csbs$84", i64 0, i64 0), i64 69 }, i32 46, i32 2, %..string { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"csbs$85", i64 0, i64 0), i64 18 } }
@"csbs$86" = private unnamed_addr constant [27 x i8] c"non-power of two alignment\00", align 1
@"csbs$87" = private unnamed_addr constant [24 x i8] c" Invalid slice indices \00", align 1
@"csbs$88" = private unnamed_addr constant [2 x i8] c":\00", align 1
@"csbs$89" = private unnamed_addr constant [22 x i8] c" is out of range 0..<\00", align 1
@"csbs$8a" = private unnamed_addr constant [59 x i8] c"/Users/tarvydas/quicklisp/local-projects/odinasm/main.odin\00", align 1
@"csbs$8b" = private unnamed_addr constant [4 x i8] c"pt6\00", align 1
@"ggv$3f" = private unnamed_addr constant %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([59 x i8], [59 x i8]* @"csbs$8a", i64 0, i64 0), i64 58 }, i32 31, i32 12, %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$8b", i64 0, i64 0), i64 3 } }
@"csbs$8c" = private unnamed_addr constant [30 x i8] c"abcdefghijklmn ABCDEFGHIJKLMN\00", align 1
@"csbs$8d" = private unnamed_addr constant [53 x i8] c"/Users/tarvydas/tools/Odin/core/strings/strings.odin\00", align 1
@"csbs$8e" = private unnamed_addr constant [2 x i8] c" \00", align 1
@"csbs$8f" = private unnamed_addr constant [3 x i8] c": \00", align 1
@"csbs$90" = private unnamed_addr constant [45 x i8] c"/Users/tarvydas/tools/Odin/core/mem/mem.odin\00", align 1
@"csbs$91" = private unnamed_addr constant [73 x i8] c"/Users/tarvydas/tools/Odin/core/runtime/default_temporary_allocator.odin\00", align 1
@"csbs$92" = private unnamed_addr constant [31 x i8] c"default_temp_allocator_destroy\00", align 1
@"ggv$40" = private unnamed_addr constant %runtime.Source_Code_Location { %..string { i8* getelementptr inbounds ([73 x i8], [73 x i8]* @"csbs$91", i64 0, i64 0), i64 72 }, i32 33, i32 4, %..string { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"csbs$92", i64 0, i64 0), i64 30 } }
@"csbs$93" = private unnamed_addr constant [56 x i8] c"/Users/tarvydas/tools/Odin/core/runtime/entry_unix.odin\00", align 1
@"csbs$94" = private unnamed_addr constant [8 x i8] c" Index \00", align 1
@"csbs$95" = private unnamed_addr constant [18 x i8] c" Matrix indices [\00", align 1
@"csbs$96" = private unnamed_addr constant [3 x i8] c", \00", align 1
@"csbs$97" = private unnamed_addr constant [23 x i8] c" is out of range [0..<\00", align 1
@"csbs$98" = private unnamed_addr constant [7 x i8] c", 0..<\00", align 1
@"csbs$99" = private unnamed_addr constant [2 x i8] c"]\00", align 1
@"csbs$9a" = private unnamed_addr constant [33 x i8] c" Invalid slice length for make: \00", align 1
@"csbs$9b" = private unnamed_addr constant [43 x i8] c"/Users/tarvydas/tools/Odin/core/os/os.odin\00", align 1
@"csbs$9c" = private unnamed_addr constant [18 x i8] c"runtime assertion\00", align 1

; Function Attrs: nounwind
define internal void @"__$startup_type_info"() #0 {
decls:
  br label %entry

entry:                                            ; preds = %decls
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 60, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 60, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 60, i32 2), align 4
  store i64 720575940379279420, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 60, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 60, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 60, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18, i32 2), align 4
  store i64 432345564227567634, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18, i32 4), align 8
  store i64 7, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 19, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 19, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 19, i32 2), align 4
  store i64 720575940379279379, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 19, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 19, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 19, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12, i32 2), align 4
  store i64 72057594037927948, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12, i32 4), align 8
  store %runtime.Type_Info_Integer zeroinitializer, %runtime.Type_Info_Integer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12, i32 5) to %runtime.Type_Info_Integer*), align 1
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1, i32 2), align 4
  store i64 4683743612465315841, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1, i32 4), align 8
  store %runtime.Type_Info_Integer { i8 1, i8 0 }, %runtime.Type_Info_Integer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1, i32 5) to %runtime.Type_Info_Integer*), align 1
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 58, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 58, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 58, i32 2), align 4
  store i64 720575940379279418, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 58, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 58, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 58, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5, i32 2), align 4
  store i64 720575940379279365, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 6) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5, i32 5, i32 1), align 8
  store i64 160, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 6, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 6, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 6, i32 2), align 4
  store i64 3602879701896396806, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 6, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 6, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$0" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 6, i32 5, i32 1), align 8
  store i64 160, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 7, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 7, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 7, i32 2), align 4
  store i64 1297036692682702855, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 7, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 0), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$4", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 0), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 0), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 1), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$5", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 1), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 1), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 1), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 8), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 2), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$6", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 2), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 2), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 2), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 4), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 3), align 8
  store %..string { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"csbs$7", i64 0, i64 0), i64 2 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 3), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 3), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 3), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 14), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 4), align 8
  store %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$8", i64 0, i64 0), i64 7 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 4), align 8
  store i64 32, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 4), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 4), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 7, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$1" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 7, i32 5, i32 1), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 8, i32 0), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 8, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 8, i32 2), align 4
  store i64 3891110078048108552, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 8, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 8, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$2" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 8, i32 5, i32 1), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 9, i32 0), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 9, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 9, i32 2), align 4
  store i64 1585267068834414601, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 9, i32 4), align 8
  store %runtime.Type_Info_Bit_Set { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 10), %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 13), i64 0, i64 1 }, %runtime.Type_Info_Bit_Set* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 9, i32 5) to %runtime.Type_Info_Bit_Set*), align 8
  store i64 23, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 9, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 10, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 10, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 10, i32 2), align 4
  store i64 3746994889972252682, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 10, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 10, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$3" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 10, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 11, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 11, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 11, i32 2), align 4
  store i64 1441151880758558731, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 11, i32 4), align 8
  store %runtime.Type_Info_Enum { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12), { %..string*, i64 } { %..string* getelementptr inbounds ([2 x %..string], [2 x %..string]* @"$enum_names-11", i64 0, i64 0), i64 2 }, { i64*, i64 } { i64* getelementptr inbounds ([2 x i64], [2 x i64]* @"$enum_values-11", i64 0, i64 0), i64 2 } }, %runtime.Type_Info_Enum* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 11, i32 5) to %runtime.Type_Info_Enum*), align 8
  store i64 21, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 11, i32 5, i32 1), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 13, i32 0), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 13, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 13, i32 2), align 4
  store i64 72057594037927949, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 13, i32 4), align 8
  store %runtime.Type_Info_Integer zeroinitializer, %runtime.Type_Info_Integer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 13, i32 5) to %runtime.Type_Info_Integer*), align 1
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 13, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 4, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 4, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 4, i32 2), align 4
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 4, i32 4), align 8
  store i64 10, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 4, i32 5, i32 1), align 8
  store i64 128, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 14, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 14, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 14, i32 2), align 4
  store i64 1369094286720630798, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 14, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 16), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 5), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 23), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 6), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 28), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 7), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 30), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 8), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 32), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 9), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 33), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 10), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 34), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 11), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 36), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 12), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 37), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 13), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 38), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 14), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 39), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 15), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 41), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 16), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 42), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 17), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 46), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 18), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 48), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 19), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 52), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 20), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 54), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 21), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 55), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 22), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 61), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 23), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 74), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 24), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 76), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 25), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 80), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 26), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 93), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 27), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 95), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 28), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 96), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 29), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 98), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 30), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 100), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 31), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 102), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 32), align 8
  store %runtime.Type_Info_Union { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 5), i64 28 }, i64 120, %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 15), i8* null, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer }, %runtime.Type_Info_Union* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 14, i32 5) to %runtime.Type_Info_Union*), align 8
  store i64 20, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 14, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 15, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 15, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 15, i32 2), align 4
  store i64 72057594037927951, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 15, i32 4), align 8
  store %runtime.Type_Info_Integer zeroinitializer, %runtime.Type_Info_Integer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 15, i32 5) to %runtime.Type_Info_Integer*), align 1
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 15, i32 5, i32 1), align 8
  store i64 80, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 16, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 16, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 16, i32 2), align 4
  store i64 3602879701896396816, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 16, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 16, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$4" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 16, i32 5, i32 1), align 8
  store i64 80, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 17, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 17, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 17, i32 2), align 4
  store i64 1297036692682702865, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 17, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 33), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$e", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 5), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 5), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 5), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 34), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$f", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 6), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 6), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 6), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 35), align 8
  store %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$10", i64 0, i64 0), i64 3 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 7), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 7), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 7), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 20), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 36), align 8
  store %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$11", i64 0, i64 0), i64 3 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 8), align 8
  store i64 40, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 8), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 8), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 17, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$5" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 17, i32 5, i32 1), align 8
  store i64 40, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 20, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 20, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 20, i32 2), align 4
  store i64 3602879701896396820, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 20, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 20, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$6" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 20, i32 5, i32 1), align 8
  store i64 40, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 21, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 21, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 21, i32 2), align 4
  store i64 1297036692682702869, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 21, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 37), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$13", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 9), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 9), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 9), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 38), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$14", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 10), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 10), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 10), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 39), align 8
  store %..string { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"csbs$15", i64 0, i64 0), i64 6 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 11), align 8
  store i64 20, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 11), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 11), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 40), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$16", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 12), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 12), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 12), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 21, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$7" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 21, i32 5, i32 1), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22, i32 0), align 8
  store i64 4, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22, i32 2), align 4
  store i64 4683743612465315862, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22, i32 4), align 8
  store %runtime.Type_Info_Integer { i8 1, i8 0 }, %runtime.Type_Info_Integer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22, i32 5) to %runtime.Type_Info_Integer*), align 1
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 22, i32 5, i32 1), align 8
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 23, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 23, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 23, i32 2), align 4
  store i64 3602879701896396823, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 23, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 23, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$8" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 23, i32 5, i32 1), align 8
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 24, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 24, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 24, i32 2), align 4
  store i64 1297036692682702872, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 24, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 41), align 8
  store %..string { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"csbs$18", i64 0, i64 0), i64 6 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 13), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 13), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 13), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 42), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$19", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 14), align 8
  store i64 1, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 14), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 14), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 24, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$9" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 24, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25, i32 2), align 4
  store i64 504403158265495577, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25, i32 4), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26, i32 2), align 4
  store i64 3746994889972252698, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$a" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 27, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 27, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 27, i32 2), align 4
  store i64 1441151880758558747, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 27, i32 4), align 8
  store %runtime.Type_Info_Enum { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12), { %..string*, i64 } { %..string* getelementptr inbounds ([3 x %..string], [3 x %..string]* @"$enum_names-27", i64 0, i64 0), i64 3 }, { i64*, i64 } { i64* getelementptr inbounds ([3 x i64], [3 x i64]* @"$enum_values-27", i64 0, i64 0), i64 3 } }, %runtime.Type_Info_Enum* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 27, i32 5) to %runtime.Type_Info_Enum*), align 8
  store i64 21, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 27, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 28, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 28, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 28, i32 2), align 4
  store i64 3602879701896396828, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 28, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 28, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$b" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 28, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29, i32 2), align 4
  store i64 1297036692682702877, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29, i32 4), align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29, i32 5) to i8*), i8 0, i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 29, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 30, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 30, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 30, i32 2), align 4
  store i64 3602879701896396830, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 30, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 30, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$c" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 30, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 31, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 31, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 31, i32 2), align 4
  store i64 1297036692682702879, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 31, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 26), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 43), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$19", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 15), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 15), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 15), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 31, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$d" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 31, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 32, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 32, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 32, i32 2), align 4
  store i64 3602879701896396832, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 32, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 32, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$e" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 32, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 33, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 33, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 33, i32 2), align 4
  store i64 3602879701896396833, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 33, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 33, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$f" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 33, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 34, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 34, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 34, i32 2), align 4
  store i64 3602879701896396834, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 34, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 34, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$10" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 34, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 35, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 35, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 35, i32 2), align 4
  store i64 1297036692682702883, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 35, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 44), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$23", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 16), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 16), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 16), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 35, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$11" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 35, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 36, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 36, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 36, i32 2), align 4
  store i64 3602879701896396836, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 36, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 36, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$12" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 36, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 37, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 37, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 37, i32 2), align 4
  store i64 3602879701896396837, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 37, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 37, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$13" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 37, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 38, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 38, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 38, i32 2), align 4
  store i64 3602879701896396838, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 38, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 38, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$14" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 38, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 39, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 39, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 39, i32 2), align 4
  store i64 3602879701896396839, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 39, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 39, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$15" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 39, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40, i32 2), align 4
  store i64 1297036692682702888, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 45), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$28", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 17), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 17), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 17), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$16" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 40, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 41, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 41, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 41, i32 2), align 4
  store i64 3602879701896396841, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 41, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 41, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$17" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 41, i32 5, i32 1), align 8
  store i64 24, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 42, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 42, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 42, i32 2), align 4
  store i64 3602879701896396842, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 42, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 42, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$18" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 42, i32 5, i32 1), align 8
  store i64 24, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 43, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 43, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 43, i32 2), align 4
  store i64 1297036692682702891, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 43, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 46), align 8
  store %..string { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"csbs$2b", i64 0, i64 0), i64 6 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 18), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 18), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 18), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 47), align 8
  store %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$2c", i64 0, i64 0), i64 7 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 19), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 19), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 19), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 48), align 8
  store %..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$2d", i64 0, i64 0), i64 8 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 20), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 20), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 20), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 44), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 49), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$2e", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 21), align 8
  store i64 17, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 21), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 21), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 43, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$19" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 43, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 44, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 44, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 44, i32 2), align 4
  store i64 3746994889972252716, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 44, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 44, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$1a" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 44, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 45, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 45, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 45, i32 2), align 4
  store i64 1441151880758558765, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 45, i32 4), align 8
  store %runtime.Type_Info_Enum { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12), { %..string*, i64 } { %..string* getelementptr inbounds ([10 x %..string], [10 x %..string]* @"$enum_names-45", i64 0, i64 0), i64 10 }, { i64*, i64 } { i64* getelementptr inbounds ([10 x i64], [10 x i64]* @"$enum_values-45", i64 0, i64 0), i64 10 } }, %runtime.Type_Info_Enum* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 45, i32 5) to %runtime.Type_Info_Enum*), align 8
  store i64 21, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 45, i32 5, i32 1), align 8
  store i64 24, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 46, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 46, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 46, i32 2), align 4
  store i64 3602879701896396846, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 46, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 46, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$1b" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 46, i32 5, i32 1), align 8
  store i64 24, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47, i32 2), align 4
  store i64 1297036692682702895, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 50), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$28", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 22), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 22), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 22), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 51), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$3b", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 23), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 23), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 23), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 52), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$3c", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 24), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 24), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 24), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$1c" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 47, i32 5, i32 1), align 8
  store i64 56, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 48, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 48, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 48, i32 2), align 4
  store i64 3602879701896396848, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 48, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 48, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$1d" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 48, i32 5, i32 1), align 8
  store i64 56, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 49, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 49, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 49, i32 2), align 4
  store i64 1297036692682702897, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 49, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 53), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$28", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 25), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 25), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 25), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 54), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$3e", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 26), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 26), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 26), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 55), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$3b", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 27), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 27), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 27), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 56), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$3c", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 28), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 28), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 28), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 57), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$3f", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 29), align 8
  store i64 32, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 29), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 29), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 58), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$40", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 30), align 8
  store i64 40, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 30), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 30), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 59), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$41", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 31), align 8
  store i64 48, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 31), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 31), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 49, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$1e" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 49, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50, i32 2), align 4
  store i64 6989586621679009842, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$1f" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51, i32 2), align 4
  store i64 4683743612465315891, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51, i32 4), align 8
  store %runtime.Type_Info_Integer { i8 1, i8 0 }, %runtime.Type_Info_Integer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51, i32 5) to %runtime.Type_Info_Integer*), align 1
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 52, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 52, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 52, i32 2), align 4
  store i64 3602879701896396852, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 52, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 52, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$20" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 52, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53, i32 2), align 4
  store i64 1297036692682702901, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 60), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$28", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 32), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 32), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 32), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 61), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$3b", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 33), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 33), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 33), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$21" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 53, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 54, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 54, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 54, i32 2), align 4
  store i64 3602879701896396854, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 54, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 54, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$22" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 54, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 55, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 55, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 55, i32 2), align 4
  store i64 3602879701896396855, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 55, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 55, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$23" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 55, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 56, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 56, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 56, i32 2), align 4
  store i64 1297036692682702904, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 56, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 62), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$46", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 34), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 34), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 34), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 63), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$47", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 35), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 35), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 35), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 56, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$24" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 56, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57, i32 2), align 4
  store i64 1152921504606847033, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57, i32 4), align 8
  store %runtime.Type_Info_Slice { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), i64 8 }, %runtime.Type_Info_Slice* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57, i32 5) to %runtime.Type_Info_Slice*), align 8
  store i64 17, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59, i32 2), align 4
  store i64 1152921504606847035, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59, i32 4), align 8
  store %runtime.Type_Info_Slice { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 18), i64 16 }, %runtime.Type_Info_Slice* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59, i32 5) to %runtime.Type_Info_Slice*), align 8
  store i64 17, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59, i32 5, i32 1), align 8
  store i64 120, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 61, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 61, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 61, i32 2), align 4
  store i64 3602879701896396861, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 61, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 61, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$25" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 61, i32 5, i32 1), align 8
  store i64 120, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 62, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 62, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 62, i32 2), align 4
  store i64 1297036692682702910, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 62, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 64), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$46", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 36), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 36), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 36), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 65), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$47", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 37), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 37), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 37), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 63), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 66), align 8
  store %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$49", i64 0, i64 0), i64 7 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 38), align 8
  store i64 32, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 38), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 38), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 66), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 67), align 8
  store %..string { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"csbs$4a", i64 0, i64 0), i64 6 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 39), align 8
  store i64 48, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 39), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 39), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 68), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$4b", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 40), align 8
  store i64 64, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 40), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 40), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 69), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$4c", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 41), align 8
  store i64 80, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 41), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 41), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 70), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$4d", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 42), align 8
  store i64 81, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 42), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 42), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 71), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$4e", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 43), align 8
  store i64 82, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 43), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 43), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 72), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$4f", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 44), align 8
  store i64 83, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 44), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 44), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 73), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$50", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 45), align 8
  store i64 88, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 45), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 45), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 72), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 74), align 8
  store %..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$51", i64 0, i64 0), i64 8 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 46), align 8
  store i64 96, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 46), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 46), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 75), align 8
  store %..string { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"csbs$52", i64 0, i64 0), i64 13 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 47), align 8
  store i64 104, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 47), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 47), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 76), align 8
  store %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$53", i64 0, i64 0), i64 7 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 48), align 8
  store i64 112, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 48), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 48), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 62, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$26" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 62, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 63, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 63, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 63, i32 2), align 4
  store i64 1152921504606847039, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 63, i32 4), align 8
  store %runtime.Type_Info_Slice { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), i64 8 }, %runtime.Type_Info_Slice* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 63, i32 5) to %runtime.Type_Info_Slice*), align 8
  store i64 17, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 63, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64, i32 2), align 4
  store i64 72057594037928000, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64, i32 4), align 8
  store %runtime.Type_Info_Integer zeroinitializer, %runtime.Type_Info_Integer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64, i32 5) to %runtime.Type_Info_Integer*), align 1
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 65, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 65, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 65, i32 2), align 4
  store i64 720575940379279425, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 65, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 65, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 65, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 66, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 66, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 66, i32 2), align 4
  store i64 1152921504606847042, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 66, i32 4), align 8
  store %runtime.Type_Info_Slice { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), i64 1 }, %runtime.Type_Info_Slice* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 66, i32 5) to %runtime.Type_Info_Slice*), align 8
  store i64 17, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 66, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 67, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 67, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 67, i32 2), align 4
  store i64 720575940379279427, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 67, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 67, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 67, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68, i32 2), align 4
  store i64 3170534137668829252, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$27" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 69, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 69, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 69, i32 2), align 4
  store i64 864691128455135301, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 69, i32 4), align 8
  store %runtime.Type_Info_Procedure { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 70), %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71), i8 0, i8 2, [6 x i8] zeroinitializer }, %runtime.Type_Info_Procedure* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 69, i32 5) to %runtime.Type_Info_Procedure*), align 8
  store i64 13, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 69, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 70, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 70, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 70, i32 2), align 4
  store i64 1224979098644774982, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 70, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 77), align 8
  store %..string { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"csbs$55", i64 0, i64 0), i64 1 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 49), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 78), align 8
  store %..string { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"csbs$55", i64 0, i64 0), i64 1 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 50), align 8
  store %runtime.Type_Info_Parameters { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 77), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 49), i64 2 } }, %runtime.Type_Info_Parameters* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 70, i32 5) to %runtime.Type_Info_Parameters*), align 8
  store i64 18, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 70, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3, i32 2), align 4
  store i64 720575940379279363, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3, i32 4), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71, i32 2), align 4
  store i64 1224979098644774983, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 79), align 8
  store %runtime.Type_Info_Parameters { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 79), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 51), i64 1 } }, %runtime.Type_Info_Parameters* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71, i32 5) to %runtime.Type_Info_Parameters*), align 8
  store i64 18, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 72, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 72, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 72, i32 2), align 4
  store i64 3746994889972252744, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 72, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 72, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$28" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 72, i32 5, i32 1), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 73, i32 0), align 8
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 73, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 73, i32 2), align 4
  store i64 1441151880758558793, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 73, i32 4), align 8
  store %runtime.Type_Info_Enum { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 12), { %..string*, i64 } { %..string* getelementptr inbounds ([4 x %..string], [4 x %..string]* @"$enum_names-73", i64 0, i64 0), i64 4 }, { i64*, i64 } { i64* getelementptr inbounds ([4 x i64], [4 x i64]* @"$enum_values-73", i64 0, i64 0), i64 4 } }, %runtime.Type_Info_Enum* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 73, i32 5) to %runtime.Type_Info_Enum*), align 8
  store i64 21, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 73, i32 5, i32 1), align 8
  store i64 48, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 74, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 74, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 74, i32 2), align 4
  store i64 3602879701896396874, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 74, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 74, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$29" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 74, i32 5, i32 1), align 8
  store i64 48, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 75, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 75, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 75, i32 2), align 4
  store i64 1297036692682702923, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 75, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 57), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 80), align 8
  store %..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$5b", i64 0, i64 0), i64 8 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 52), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 49), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 49), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 81), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$5c", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 53), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 50), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 50), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 82), align 8
  store %..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$5d", i64 0, i64 0), i64 8 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 54), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 51), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 51), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 68), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 83), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$50", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 55), align 8
  store i64 32, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 52), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 52), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 84), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$4f", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 56), align 8
  store i64 40, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 53), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 53), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 85), align 8
  store %..string { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"csbs$5e", i64 0, i64 0), i64 6 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 57), align 8
  store i64 41, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 54), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 54), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 25), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 86), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$5f", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 58), align 8
  store i64 42, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 55), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 55), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 75, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$2a" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 75, i32 5, i32 1), align 8
  store i64 40, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 76, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 76, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 76, i32 2), align 4
  store i64 3602879701896396876, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 76, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 76, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$2b" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 76, i32 5, i32 1), align 8
  store i64 40, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 77, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 77, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 77, i32 2), align 4
  store i64 1297036692682702925, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 77, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 87), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$f", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 59), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 56), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 56), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 59), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 88), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$47", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 60), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 57), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 57), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 78), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 89), align 8
  store %..string { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"csbs$61", i64 0, i64 0), i64 6 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 61), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 58), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 58), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 77, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$2c" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 77, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 78, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 78, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 78, i32 2), align 4
  store i64 1152921504606847054, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 78, i32 4), align 8
  store %runtime.Type_Info_Slice { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50), i64 8 }, %runtime.Type_Info_Slice* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 78, i32 5) to %runtime.Type_Info_Slice*), align 8
  store i64 17, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 78, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 79, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 79, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 79, i32 2), align 4
  store i64 720575940379279439, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 79, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 50) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 79, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 79, i32 5, i32 1), align 8
  store i64 24, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 80, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 80, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 80, i32 2), align 4
  store i64 3602879701896396880, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 80, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 80, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$2d" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 80, i32 5, i32 1), align 8
  store i64 24, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 81, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 81, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 81, i32 2), align 4
  store i64 1297036692682702929, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 81, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 90), align 8
  store %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$63", i64 0, i64 0), i64 3 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 62), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 59), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 59), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 91), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$64", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 63), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 60), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 60), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 82), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 92), align 8
  store %..string { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"csbs$65", i64 0, i64 0), i64 8 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 64), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 61), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 61), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 81, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$2e" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 81, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 82, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 82, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 82, i32 2), align 4
  store i64 720575940379279442, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 82, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 83) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 82, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 82, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 83, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 83, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 83, i32 2), align 4
  store i64 3602879701896396883, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 83, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 83, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$2f" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 83, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 84, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 84, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 84, i32 2), align 4
  store i64 1297036692682702932, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 84, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 93), align 8
  store %..string { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"csbs$68", i64 0, i64 0), i64 2 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 65), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 62), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 62), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 94), align 8
  store %..string { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"csbs$69", i64 0, i64 0), i64 2 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 66), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 63), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 63), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 88), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 95), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$6a", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 67), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 64), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 64), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 91), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 96), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$6b", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 68), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 65), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 65), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 84, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$30" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 84, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85, i32 2), align 4
  store i64 720575940379279445, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85, i32 4), align 8
  store %runtime.Type_Info_Pointer { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 86) }, %runtime.Type_Info_Pointer* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85, i32 5) to %runtime.Type_Info_Pointer*), align 8
  store i64 11, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 85, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 86, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 86, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 86, i32 2), align 4
  store i64 3602879701896396886, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 86, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 86, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$31" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 86, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 87, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 87, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 87, i32 2), align 4
  store i64 1297036692682702935, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 87, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 97), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$6d", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 69), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 66), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 66), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 98), align 8
  store %..string { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"csbs$6e", i64 0, i64 0), i64 13 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 70), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 67), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 67), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 99), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$6f", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 71), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 68), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 68), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 100), align 8
  store %..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$70", i64 0, i64 0), i64 17 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 72), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 69), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 69), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 87, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$32" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 87, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 88, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 88, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 88, i32 2), align 4
  store i64 864691128455135320, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 88, i32 4), align 8
  store %runtime.Type_Info_Procedure { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 89), %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 90), i8 0, i8 2, [6 x i8] zeroinitializer }, %runtime.Type_Info_Procedure* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 88, i32 5) to %runtime.Type_Info_Procedure*), align 8
  store i64 13, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 88, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 89, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 89, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 89, i32 2), align 4
  store i64 1224979098644775001, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 89, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 101), align 8
  store %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$63", i64 0, i64 0), i64 3 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 73), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 102), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$71", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 74), align 8
  store %runtime.Type_Info_Parameters { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 101), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 73), i64 2 } }, %runtime.Type_Info_Parameters* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 89, i32 5) to %runtime.Type_Info_Parameters*), align 8
  store i64 18, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 89, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 90, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 90, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 90, i32 2), align 4
  store i64 1224979098644775002, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 90, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 64), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 103), align 8
  store %runtime.Type_Info_Parameters { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 103), i64 1 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 75), i64 1 } }, %runtime.Type_Info_Parameters* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 90, i32 5) to %runtime.Type_Info_Parameters*), align 8
  store i64 18, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 90, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 91, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 91, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 91, i32 2), align 4
  store i64 864691128455135323, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 91, i32 4), align 8
  store %runtime.Type_Info_Procedure { %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 92), %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 71), i8 0, i8 2, [6 x i8] zeroinitializer }, %runtime.Type_Info_Procedure* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 91, i32 5) to %runtime.Type_Info_Procedure*), align 8
  store i64 13, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 91, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 92, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 92, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 92, i32 2), align 4
  store i64 1224979098644775004, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 92, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 104), align 8
  store %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$72", i64 0, i64 0), i64 3 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 76), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 3), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 105), align 8
  store %..string { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"csbs$73", i64 0, i64 0), i64 3 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 77), align 8
  store %runtime.Type_Info_Parameters { { %runtime.Type_Info**, i64 } { %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 104), i64 2 }, { %..string*, i64 } { %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 76), i64 2 } }, %runtime.Type_Info_Parameters* bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 92, i32 5) to %runtime.Type_Info_Parameters*), align 8
  store i64 18, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 92, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 93, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 93, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 93, i32 2), align 4
  store i64 3602879701896396893, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 93, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 93, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$33" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 93, i32 5, i32 1), align 8
  store i64 32, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 94, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 94, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 94, i32 2), align 4
  store i64 1297036692682702942, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 94, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 106), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$28", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 78), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 70), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 70), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 107), align 8
  store %..string { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"csbs$75", i64 0, i64 0), i64 10 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 79), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 71), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 71), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 108), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$76", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 80), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 72), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 72), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 51), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 109), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$77", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 81), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 73), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 73), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 94, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$34" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 94, i32 5, i32 1), align 8
  store i64 24, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 95, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 95, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 95, i32 2), align 4
  store i64 3602879701896396895, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 95, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 95, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$35" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 95, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 96, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 96, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 96, i32 2), align 4
  store i64 3602879701896396896, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 96, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 96, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$36" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 96, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 97, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 97, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 97, i32 2), align 4
  store i64 1297036692682702945, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 97, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 110), align 8
  store %..string { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"csbs$7a", i64 0, i64 0), i64 7 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 82), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 74), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 74), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 111), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$7b", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 83), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 75), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 75), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 97, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$37" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 97, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 98, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 98, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 98, i32 2), align 4
  store i64 3602879701896396898, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 98, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 98, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$38" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 98, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 99, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 99, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 99, i32 2), align 4
  store i64 1297036692682702947, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 99, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 112), align 8
  store %..string { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"csbs$7d", i64 0, i64 0), i64 5 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 84), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 76), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 76), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 113), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$7b", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 85), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 77), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 77), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 99, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$39" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 99, i32 5, i32 1), align 8
  store i64 40, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 100, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 100, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 100, i32 2), align 4
  store i64 3602879701896396900, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 100, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 100, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$3a" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 100, i32 5, i32 1), align 8
  store i64 40, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 101, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 101, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 101, i32 2), align 4
  store i64 1297036692682702949, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 101, i32 4), align 8
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 5), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 114), align 8
  store %..string { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"csbs$28", i64 0, i64 0), i64 4 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 86), align 8
  store i64 0, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 78), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 78), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 115), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$3b", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 87), align 8
  store i64 8, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 79), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 79), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 116), align 8
  store %..string { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"csbs$7f", i64 0, i64 0), i64 11 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 88), align 8
  store i64 16, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 80), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 80), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 117), align 8
  store %..string { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"csbs$80", i64 0, i64 0), i64 9 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 89), align 8
  store i64 24, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 81), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 81), align 1
  store %runtime.Type_Info* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 1), %runtime.Type_Info** getelementptr inbounds ([119 x %runtime.Type_Info*], [119 x %runtime.Type_Info*]* @"__$type_info_types_data", i64 0, i64 118), align 8
  store %..string { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"csbs$81", i64 0, i64 0), i64 12 }, %..string* getelementptr inbounds ([119 x %..string], [119 x %..string]* @"__$type_info_names_data", i64 0, i64 90), align 8
  store i64 32, i64* getelementptr inbounds ([119 x i64], [119 x i64]* @"__$type_info_offsets_data", i64 0, i64 82), align 8
  store i8 0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @"__$type_info_usings_data", i64 0, i64 82), align 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 101, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Struct* @"ggv$3b" to i8*), i64 120, i1 false)
  store i64 19, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 101, i32 5, i32 1), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 102, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 102, i32 1), align 8
  store i32 1, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 102, i32 2), align 4
  store i64 3602879701896396902, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 102, i32 4), align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 bitcast ({ [15 x i64], i64 }* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 102, i32 5) to i8*), i8* bitcast (%runtime.Type_Info_Named* @"ggv$3c" to i8*), i64 80, i1 false)
  store i64 1, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 102, i32 5, i32 1), align 8
  store i64 16, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 2, i32 0), align 8
  store i64 8, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 2, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 2, i32 2), align 4
  store i64 2, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 2, i32 4), align 8
  store i64 9, i64* getelementptr inbounds ([103 x %runtime.Type_Info], [103 x %runtime.Type_Info]* @"__$type_info_data", i64 0, i64 2, i32 5, i32 1), align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
define i8 @"__$equal1"(i8* nonnull %0, i8* nonnull %1) #2 {
decls:
  br label %entry

entry:                                            ; preds = %decls
  %2 = bitcast i8* %0 to { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }*
  %3 = bitcast i8* %1 to { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }*
  %4 = icmp eq { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %2, %3
  br i1 %4, label %same_ptr, label %diff_ptr

same_ptr:                                         ; preds = %entry
  ret i8 1

diff_ptr:                                         ; preds = %entry
  %5 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %2, i32 0, i32 0
  %6 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %3, i32 0, i32 0
  %7 = load %..string, %..string* %5, align 8
  %8 = load %..string, %..string* %6, align 8
  %9 = call i8 @runtime.string_eq(%..string %7, %..string %8)
  %10 = trunc i8 %9 to i1
  br i1 %10, label %btrue, label %bfalse

btrue:                                            ; preds = %diff_ptr
  %11 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %2, i32 0, i32 1
  %12 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %3, i32 0, i32 1
  %13 = load %runtime.Type_Info*, %runtime.Type_Info** %11, align 8
  %14 = load %runtime.Type_Info*, %runtime.Type_Info** %12, align 8
  %15 = icmp eq %runtime.Type_Info* %13, %14
  br i1 %15, label %btrue1, label %bfalse

btrue1:                                           ; preds = %btrue
  %16 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %2, i32 0, i32 2
  %17 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %3, i32 0, i32 2
  %18 = load %..string, %..string* %16, align 8
  %19 = load %..string, %..string* %17, align 8
  %20 = call i8 @runtime.string_eq(%..string %18, %..string %19)
  %21 = trunc i8 %20 to i1
  br i1 %21, label %btrue2, label %bfalse

btrue2:                                           ; preds = %btrue1
  %22 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %2, i32 0, i32 3
  %23 = getelementptr inbounds { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }, { %..string, %runtime.Type_Info*, %..string, %runtime.Source_Code_Location }* %3, i32 0, i32 3
  %24 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %22, align 8
  %25 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %23, align 8
  %26 = bitcast %runtime.Source_Code_Location* %22 to i8*
  %27 = bitcast %runtime.Source_Code_Location* %23 to i8*
  %28 = call i8 @"__$equal2"(i8* %26, i8* %27)
  %29 = trunc i8 %28 to i1
  br i1 %29, label %btrue3, label %bfalse

btrue3:                                           ; preds = %btrue2
  ret i8 1

bfalse:                                           ; preds = %btrue2, %btrue1, %btrue, %diff_ptr
  ret i8 0
}

define internal i8 @runtime.string_eq(%..string %0, %..string %1) !dbg !1377 {
decls:
  %2 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !1382, metadata !DIExpression()), !dbg !1383
  %3 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %1, metadata !1384, metadata !DIExpression()), !dbg !1385
  %4 = alloca %..string, align 8, !dbg !1386
  %5 = alloca %runtime.Raw_String, align 8, !dbg !1386
  %6 = alloca %..string, align 8, !dbg !1388
  %7 = alloca %runtime.Raw_String, align 8, !dbg !1388
  br label %entry, !dbg !1389

entry:                                            ; preds = %decls
  store %..string %0, %..string* %2, align 8
  store %..string %1, %..string* %3, align 8
  store %..string %0, %..string* %4, align 8, !dbg !1386
  %8 = bitcast %..string* %4 to %runtime.Raw_String*, !dbg !1386
  %9 = load %runtime.Raw_String, %runtime.Raw_String* %8, align 8, !dbg !1386
  call void @llvm.dbg.declare(metadata %runtime.Raw_String* %5, metadata !1390, metadata !DIExpression()), !dbg !1386
  store %runtime.Raw_String %9, %runtime.Raw_String* %5, align 8, !dbg !1386
  store %..string %1, %..string* %6, align 8, !dbg !1388
  %10 = bitcast %..string* %6 to %runtime.Raw_String*, !dbg !1388
  %11 = load %runtime.Raw_String, %runtime.Raw_String* %10, align 8, !dbg !1388
  call void @llvm.dbg.declare(metadata %runtime.Raw_String* %7, metadata !1395, metadata !DIExpression()), !dbg !1388
  store %runtime.Raw_String %11, %runtime.Raw_String* %7, align 8, !dbg !1388
  %12 = getelementptr inbounds %runtime.Raw_String, %runtime.Raw_String* %5, i32 0, i32 1, !dbg !1396
  %13 = load i64, i64* %12, align 8, !dbg !1396
  %14 = getelementptr inbounds %runtime.Raw_String, %runtime.Raw_String* %7, i32 0, i32 1, !dbg !1396
  %15 = load i64, i64* %14, align 8, !dbg !1396
  %16 = icmp ne i64 %13, %15, !dbg !1396
  %17 = zext i1 %16 to i8, !dbg !1396
  %18 = icmp ne i8 %17, 0, !dbg !1396
  br i1 %18, label %if.then, label %if.done, !dbg !1396

if.then:                                          ; preds = %entry
  ret i8 0, !dbg !1397

if.done:                                          ; preds = %entry
  %19 = getelementptr inbounds %runtime.Raw_String, %runtime.Raw_String* %5, i32 0, i32 0, !dbg !1400
  %20 = load i8*, i8** %19, align 8, !dbg !1400
  %21 = getelementptr inbounds %runtime.Raw_String, %runtime.Raw_String* %7, i32 0, i32 0, !dbg !1400
  %22 = load i8*, i8** %21, align 8, !dbg !1400
  %23 = getelementptr inbounds %runtime.Raw_String, %runtime.Raw_String* %5, i32 0, i32 1, !dbg !1400
  %24 = load i64, i64* %23, align 8, !dbg !1400
  %25 = call i8 @runtime.memory_equal(i8* %20, i8* %22, i64 %24) #4, !dbg !1400
  ret i8 %25, !dbg !1400
}

; Function Attrs: nounwind readonly
define i8 @"__$equal2"(i8* nonnull %0, i8* nonnull %1) #2 {
decls:
  br label %entry

entry:                                            ; preds = %decls
  %2 = bitcast i8* %0 to { %..string, i32, i32, %..string }*
  %3 = bitcast i8* %1 to { %..string, i32, i32, %..string }*
  %4 = icmp eq { %..string, i32, i32, %..string }* %2, %3
  br i1 %4, label %same_ptr, label %diff_ptr

same_ptr:                                         ; preds = %entry
  ret i8 1

diff_ptr:                                         ; preds = %entry
  %5 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %2, i32 0, i32 0
  %6 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %3, i32 0, i32 0
  %7 = load %..string, %..string* %5, align 8
  %8 = load %..string, %..string* %6, align 8
  %9 = call i8 @runtime.string_eq(%..string %7, %..string %8)
  %10 = trunc i8 %9 to i1
  br i1 %10, label %btrue, label %bfalse

btrue:                                            ; preds = %diff_ptr
  %11 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %2, i32 0, i32 1
  %12 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %3, i32 0, i32 1
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %12, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %btrue1, label %bfalse

btrue1:                                           ; preds = %btrue
  %16 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %2, i32 0, i32 2
  %17 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %3, i32 0, i32 2
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %17, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %btrue2, label %bfalse

btrue2:                                           ; preds = %btrue1
  %21 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %2, i32 0, i32 3
  %22 = getelementptr inbounds { %..string, i32, i32, %..string }, { %..string, i32, i32, %..string }* %3, i32 0, i32 3
  %23 = load %..string, %..string* %21, align 8
  %24 = load %..string, %..string* %22, align 8
  %25 = call i8 @runtime.string_eq(%..string %23, %..string %24)
  %26 = trunc i8 %25 to i1
  br i1 %26, label %btrue3, label %bfalse

btrue3:                                           ; preds = %btrue2
  ret i8 1

bfalse:                                           ; preds = %btrue2, %btrue1, %btrue, %diff_ptr
  ret i8 0
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
define internal void @"__$init_objc_names"() #0 {
decls:
  br label %entry

entry:                                            ; preds = %decls
  ret void
}

define void @"__$startup_runtime"(i8* noalias nocapture nonnull %__.context_ptr) {
decls:
  br label %entry

entry:                                            ; preds = %decls
  %0 = bitcast i8* %__.context_ptr to %runtime.Context*
  call void @"__$startup_type_info"()
  call void @"__$init_objc_names"()
  ret void
}

define void @"__$cleanup_runtime"(i8* noalias nocapture nonnull %__.context_ptr) {
decls:
  br label %entry

entry:                                            ; preds = %decls
  %0 = bitcast i8* %__.context_ptr to %runtime.Context*
  %1 = bitcast %runtime.Context* %0 to i8*
  call void @runtime._destroy_temp_allocator_fini-3127(i8* %1)
  ret void
}

define internal void @runtime._destroy_temp_allocator_fini-3127(i8* noalias nocapture nonnull %__.context_ptr) !dbg !1401 {
decls:
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1404, metadata !DIExpression()), !dbg !1440
  br label %entry, !dbg !1440

entry:                                            ; preds = %decls
  %0 = bitcast i8* %__.context_ptr to %runtime.Context*
  %1 = bitcast %runtime.Context* %0 to i8*, !dbg !1441
  call void @runtime.default_temp_allocator_destroy(%runtime.Default_Temp_Allocator* @runtime.global_default_temp_allocator_data, i8* %1), !dbg !1441
  ret void, !dbg !1443
}

; Function Attrs: alwaysinline
define internal { i64, i64 } @runtime.safe_add-382(i64 %0, i64 %1) #4 !dbg !1444 {
decls:
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1451, metadata !DIExpression()), !dbg !1452
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !1453, metadata !DIExpression()), !dbg !1454
  %4 = alloca i64, align 8, !dbg !1455
  %5 = alloca i8, align 1, !dbg !1455
  %6 = alloca { i64, i8 }, align 8, !dbg !1457
  br label %entry, !dbg !1458

entry:                                            ; preds = %decls
  store i64 %0, i64* %2, align 8
  store i64 %1, i64* %3, align 8
  %7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !1455
  %8 = extractvalue { i64, i1 } %7, 0, !dbg !1455
  %9 = extractvalue { i64, i1 } %7, 1, !dbg !1455
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1459, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1460, metadata !DIExpression()), !dbg !1461
  store i64 %8, i64* %4, align 8, !dbg !1455
  %10 = zext i1 %9 to i8, !dbg !1455
  store i8 %10, i8* %5, align 1, !dbg !1455
  %11 = load i64, i64* %4, align 8, !dbg !1457
  %12 = load i8, i8* %5, align 1, !dbg !1457
  %13 = icmp eq i8 %12, 0, !dbg !1457
  %14 = zext i1 %13 to i8, !dbg !1457
  %15 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %6, i32 0, i32 0, !dbg !1457
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %6, i32 0, i32 1, !dbg !1457
  store i64 %11, i64* %15, align 8, !dbg !1457
  store i8 %14, i8* %16, align 1, !dbg !1457
  %17 = load { i64, i8 }, { i64, i8 }* %6, align 8, !dbg !1457
  %18 = bitcast { i64, i8 }* %6 to { i64, i64 }*, !dbg !1457
  %19 = load { i64, i64 }, { i64, i64 }* %18, align 8, !dbg !1457
  ret { i64, i64 } %19, !dbg !1457
}

define internal { i64, i64 } @runtime.memory_block_alloc({ i64, i64 } %0, i64 %1, %runtime.Source_Code_Location* byval align 8 %2, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1462 {
decls:
  %3 = alloca %runtime.Allocator, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %2, metadata !1471, metadata !DIExpression()), !dbg !1472
  %5 = alloca %runtime.Memory_Block*, align 8
  %6 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1473, metadata !DIExpression()), !dbg !1474
  %7 = alloca i64, align 8, !dbg !1475
  %8 = alloca i64, align 8, !dbg !1477
  %9 = alloca i64, align 8, !dbg !1478
  %10 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !1479
  %11 = alloca { %runtime.Memory_Block*, i8 }, align 8, !dbg !1479
  %12 = alloca { i8*, i64 }, align 8, !dbg !1479
  %13 = alloca i8*, align 8, !dbg !1480
  %14 = alloca i64, align 8, !dbg !1480
  %15 = alloca { %runtime.Memory_Block*, i8 }, align 8, !dbg !1481
  br label %entry, !dbg !1474

entry:                                            ; preds = %decls
  %16 = bitcast %runtime.Allocator* %3 to { i64, i64 }*
  store { i64, i64 } %0, { i64, i64 }* %16, align 8
  %17 = load %runtime.Allocator, %runtime.Allocator* %3, align 8
  call void @llvm.dbg.value(metadata %runtime.Allocator* %3, metadata !1482, metadata !DIExpression()), !dbg !1483
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata %runtime.Memory_Block** %5, metadata !1484, metadata !DIExpression()), !dbg !1485
  store %runtime.Memory_Block* null, %runtime.Memory_Block** %5, align 8
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1486, metadata !DIExpression()), !dbg !1487
  store i8 0, i8* %6, align 1
  %18 = bitcast i8* %__.context_ptr to %runtime.Context*
  %19 = add i64 %1, 48, !dbg !1475
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1488, metadata !DIExpression()), !dbg !1475
  store i64 %19, i64* %7, align 8, !dbg !1475
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1489, metadata !DIExpression()), !dbg !1477
  store i64 48, i64* %8, align 8, !dbg !1477
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1492, metadata !DIExpression()), !dbg !1478
  store i64 16, i64* %9, align 8, !dbg !1478
  %20 = load i64, i64* %7, align 8, !dbg !1479
  %21 = load i64, i64* %9, align 8, !dbg !1479
  %22 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %2, align 8, !dbg !1479
  %23 = bitcast %runtime.Allocator* %3 to { i64, i64 }*, !dbg !1479
  %24 = load { i64, i64 }, { i64, i64 }* %23, align 8, !dbg !1479
  %25 = bitcast { { i8*, i64 }, i8 }* %10 to i8*, !dbg !1479
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 24, i1 false), !dbg !1479
  %26 = bitcast %runtime.Context* %18 to i8*, !dbg !1479
  call void @runtime.mem_alloc({ { i8*, i64 }, i8 }* sret %10, i64 %20, i64 %21, { i64, i64 } %24, %runtime.Source_Code_Location* byval %2, i8* %26), !dbg !1479
  %27 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %10, align 8, !dbg !1479
  %28 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %10, i32 0, i32 0, !dbg !1479
  %29 = load { i8*, i64 }, { i8*, i64 }* %28, align 8, !dbg !1479
  %30 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %10, i32 0, i32 1, !dbg !1479
  %31 = load i8, i8* %30, align 1, !dbg !1479
  %32 = icmp eq i8 %31, 0, !dbg !1479
  br i1 %32, label %or_return.continue, label %or_return.return, !dbg !1479

or_return.return:                                 ; preds = %entry
  store i8 %31, i8* %6, align 1, !dbg !1479
  %33 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1479
  %34 = load i8, i8* %6, align 1, !dbg !1479
  store %runtime.Memory_Block* %33, %runtime.Memory_Block** %5, align 8, !dbg !1479
  store i8 %34, i8* %6, align 1, !dbg !1479
  %35 = getelementptr inbounds { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %11, i32 0, i32 0, !dbg !1479
  %36 = getelementptr inbounds { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %11, i32 0, i32 1, !dbg !1479
  store %runtime.Memory_Block* %33, %runtime.Memory_Block** %35, align 8, !dbg !1479
  store i8 %34, i8* %36, align 1, !dbg !1479
  %37 = load { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %11, align 8, !dbg !1479
  %38 = bitcast { %runtime.Memory_Block*, i8 }* %11 to { i64, i64 }*, !dbg !1479
  %39 = load { i64, i64 }, { i64, i64 }* %38, align 8, !dbg !1479
  ret { i64, i64 } %39, !dbg !1479

or_return.continue:                               ; preds = %entry
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %12, metadata !1493, metadata !DIExpression()), !dbg !1479
  store { i8*, i64 } %29, { i8*, i64 }* %12, align 8, !dbg !1479
  %40 = load { i8*, i64 }, { i8*, i64 }* %12, align 8, !dbg !1494
  %41 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 0, !dbg !1494
  %42 = load i8*, i8** %41, align 8, !dbg !1494
  %43 = bitcast i8* %42 to %runtime.Memory_Block*, !dbg !1494
  store %runtime.Memory_Block* %43, %runtime.Memory_Block** %5, align 8, !dbg !1494
  %44 = load { i8*, i64 }, { i8*, i64 }* %12, align 8, !dbg !1480
  %45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 1, !dbg !1480
  %46 = load i64, i64* %45, align 8, !dbg !1480
  %47 = load { i8*, i64 }, { i8*, i64 }* %12, align 8, !dbg !1480
  %48 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 0, !dbg !1480
  %49 = load i8*, i8** %48, align 8, !dbg !1480
  %50 = load i8*, i8** %48, align 8, !dbg !1480
  %51 = getelementptr i8, i8* %50, i64 %46, !dbg !1480
  store i8* %51, i8** %13, align 8, !dbg !1480
  %52 = load i8*, i8** %13, align 8, !dbg !1480
  %53 = ptrtoint i8* %52 to i64, !dbg !1480
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1495, metadata !DIExpression()), !dbg !1480
  store i64 %53, i64* %14, align 8, !dbg !1480
  %54 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1496
  %55 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %54, i32 0, i32 1, !dbg !1496
  store %runtime.Allocator %17, %runtime.Allocator* %55, align 8, !dbg !1496
  %56 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1497
  %57 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %56, i32 0, i32 2, !dbg !1497
  %58 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1497
  %59 = ptrtoint %runtime.Memory_Block* %58 to i64, !dbg !1497
  %60 = load i64, i64* %8, align 8, !dbg !1497
  %61 = add i64 %59, %60, !dbg !1497
  %62 = inttoptr i64 %61 to i8*, !dbg !1497
  store i8* %62, i8** %57, align 8, !dbg !1497
  %63 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1498
  %64 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %63, i32 0, i32 4, !dbg !1498
  %65 = load i64, i64* %14, align 8, !dbg !1498
  %66 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1498
  %67 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %66, i32 0, i32 2, !dbg !1498
  %68 = load i8*, i8** %67, align 8, !dbg !1498
  %69 = ptrtoint i8* %68 to i64, !dbg !1498
  %70 = sub i64 %65, %69, !dbg !1498
  store i64 %70, i64* %64, align 8, !dbg !1498
  %71 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1499
  %72 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %71, i32 0, i32 3, !dbg !1499
  %73 = load i64, i64* %72, align 8, !dbg !1499
  %74 = icmp eq i64 %73, 0, !dbg !1499
  %75 = zext i1 %74 to i8, !dbg !1499
  %76 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* @"ggv$3d", align 8, !dbg !1499
  %77 = icmp ne i8 %75, 0, !dbg !1499
  %78 = bitcast %runtime.Context* %18 to i8*, !dbg !1499
  call void @runtime.assert(i1 zeroext %77, %..string zeroinitializer, %runtime.Source_Code_Location* byval @"ggv$3d", i8* %78), !dbg !1499
  %79 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1500
  %80 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %79, i32 0, i32 0, !dbg !1500
  %81 = load %runtime.Memory_Block*, %runtime.Memory_Block** %80, align 8, !dbg !1500
  %82 = icmp eq %runtime.Memory_Block* %81, null, !dbg !1500
  %83 = zext i1 %82 to i8, !dbg !1500
  %84 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* @"ggv$3e", align 8, !dbg !1500
  %85 = icmp ne i8 %83, 0, !dbg !1500
  %86 = bitcast %runtime.Context* %18 to i8*, !dbg !1500
  call void @runtime.assert(i1 zeroext %85, %..string zeroinitializer, %runtime.Source_Code_Location* byval @"ggv$3e", i8* %86), !dbg !1500
  %87 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1481
  %88 = load i8, i8* %6, align 1, !dbg !1481
  store %runtime.Memory_Block* %87, %runtime.Memory_Block** %5, align 8, !dbg !1481
  store i8 %88, i8* %6, align 1, !dbg !1481
  %89 = getelementptr inbounds { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %15, i32 0, i32 0, !dbg !1481
  %90 = getelementptr inbounds { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %15, i32 0, i32 1, !dbg !1481
  store %runtime.Memory_Block* %87, %runtime.Memory_Block** %89, align 8, !dbg !1481
  store i8 %88, i8* %90, align 1, !dbg !1481
  %91 = load { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %15, align 8, !dbg !1481
  %92 = bitcast { %runtime.Memory_Block*, i8 }* %15 to { i64, i64 }*, !dbg !1481
  %93 = load { i64, i64 }, { i64, i64 }* %92, align 8, !dbg !1481
  ret { i64, i64 } %93, !dbg !1481
}

define internal void @runtime.memory_block_dealloc(%runtime.Memory_Block* %0, %runtime.Source_Code_Location* byval align 8 %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1501 {
decls:
  %2 = alloca %runtime.Memory_Block*, align 8
  call void @llvm.dbg.value(metadata %runtime.Memory_Block* %0, metadata !1504, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %1, metadata !1506, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1508, metadata !DIExpression()), !dbg !1509
  %3 = alloca %runtime.Allocator, align 8, !dbg !1510
  br label %entry, !dbg !1509

entry:                                            ; preds = %decls
  store %runtime.Memory_Block* %0, %runtime.Memory_Block** %2, align 8
  %4 = bitcast i8* %__.context_ptr to %runtime.Context*
  %5 = icmp ne %runtime.Memory_Block* %0, null, !dbg !1514
  %6 = zext i1 %5 to i8, !dbg !1514
  %7 = icmp ne i8 %6, 0, !dbg !1514
  br i1 %7, label %if.then, label %if.done, !dbg !1514

if.then:                                          ; preds = %entry
  %8 = load %runtime.Memory_Block*, %runtime.Memory_Block** %2, align 8, !dbg !1510
  %9 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %8, i32 0, i32 1, !dbg !1510
  %10 = load %runtime.Allocator, %runtime.Allocator* %9, align 8, !dbg !1510
  call void @llvm.dbg.declare(metadata %runtime.Allocator* %3, metadata !1515, metadata !DIExpression()), !dbg !1510
  store %runtime.Allocator %10, %runtime.Allocator* %3, align 8, !dbg !1510
  %11 = load %runtime.Allocator, %runtime.Allocator* %3, align 8, !dbg !1516
  %12 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %1, align 8, !dbg !1516
  %13 = bitcast %runtime.Memory_Block* %0 to i8*, !dbg !1516
  %14 = bitcast %runtime.Allocator* %3 to { i64, i64 }*, !dbg !1516
  %15 = load { i64, i64 }, { i64, i64 }* %14, align 8, !dbg !1516
  %16 = bitcast %runtime.Context* %4 to i8*, !dbg !1516
  %17 = call i8 @runtime.mem_free(i8* %13, { i64, i64 } %15, %runtime.Source_Code_Location* byval %1, i8* %16), !dbg !1516
  br label %if.done, !dbg !1516

if.done:                                          ; preds = %if.then, %entry
  ret void, !dbg !1517
}

define internal void @runtime.alloc_from_memory_block({ { i8*, i64 }, i8 }* noalias sret %agg.result, %runtime.Memory_Block* %0, i64 %1, i64 %2, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1518 {
decls:
  %3 = alloca %runtime.Memory_Block*, align 8
  call void @llvm.dbg.value(metadata %runtime.Memory_Block* %0, metadata !1525, metadata !DIExpression()), !dbg !1526
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !1527, metadata !DIExpression()), !dbg !1528
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %2, metadata !1529, metadata !DIExpression()), !dbg !1530
  %6 = alloca { i8*, i64 }, align 8
  %7 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1531, metadata !DIExpression()), !dbg !1532
  %8 = alloca i64, align 8, !dbg !1533
  %9 = alloca { i64, i8 }, align 8, !dbg !1535
  %10 = alloca i64, align 8, !dbg !1535
  %11 = alloca i8, align 1, !dbg !1535
  %12 = alloca { i64, i8 }, align 8, !dbg !1536
  %13 = alloca i64, align 8, !dbg !1536
  %14 = alloca i8, align 1, !dbg !1536
  %15 = alloca i8*, align 8, !dbg !1538
  %16 = alloca { i8*, i64 }, align 8, !dbg !1538
  br label %entry, !dbg !1532

entry:                                            ; preds = %decls
  store %runtime.Memory_Block* %0, %runtime.Memory_Block** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 %2, i64* %5, align 8
  %17 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %6, metadata !1539, metadata !DIExpression()), !dbg !1540
  %18 = bitcast { i8*, i64 }* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1541, metadata !DIExpression()), !dbg !1542
  store i8 0, i8* %7, align 1
  %20 = bitcast i8* %__.context_ptr to %runtime.Context*
  %21 = icmp eq %runtime.Memory_Block* %0, null, !dbg !1543
  %22 = zext i1 %21 to i8, !dbg !1543
  %23 = icmp ne i8 %22, 0, !dbg !1543
  br i1 %23, label %if.then, label %if.done, !dbg !1543

if.then:                                          ; preds = %entry
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %6, align 8, !dbg !1544
  store i8 1, i8* %7, align 1, !dbg !1544
  %24 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1544
  %25 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1544
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %24, align 8, !dbg !1544
  store i8 1, i8* %25, align 1, !dbg !1544
  ret void, !dbg !1544

if.done:                                          ; preds = %entry
  %26 = call i64 @runtime.alloc_from_memory_block.calc_alignment_offset-0(%runtime.Memory_Block* %0, i64 %2), !dbg !1533
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1547, metadata !DIExpression()), !dbg !1533
  store i64 %26, i64* %8, align 8, !dbg !1533
  %27 = load i64, i64* %8, align 8, !dbg !1535
  %28 = call { i64, i64 } @runtime.safe_add-382(i64 %1, i64 %27), !dbg !1535
  %29 = bitcast { i64, i8 }* %9 to { i64, i64 }*, !dbg !1535
  store { i64, i64 } %28, { i64, i64 }* %29, align 8, !dbg !1535
  %30 = load { i64, i8 }, { i64, i8 }* %9, align 8, !dbg !1535
  %31 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %9, i32 0, i32 0, !dbg !1535
  %32 = load i64, i64* %31, align 8, !dbg !1535
  %33 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %9, i32 0, i32 1, !dbg !1535
  %34 = load i8, i8* %33, align 1, !dbg !1535
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1548, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1549, metadata !DIExpression()), !dbg !1550
  store i64 %32, i64* %10, align 8, !dbg !1535
  store i8 %34, i8* %11, align 1, !dbg !1535
  %35 = load i8, i8* %11, align 1, !dbg !1551
  %36 = icmp ne i8 %35, 0, !dbg !1551
  br i1 %36, label %if.done2, label %if.then1, !dbg !1551

if.then1:                                         ; preds = %if.done
  store i8 1, i8* %7, align 1, !dbg !1552
  %37 = load { i8*, i64 }, { i8*, i64 }* %6, align 8, !dbg !1555
  %38 = load i8, i8* %7, align 1, !dbg !1555
  store { i8*, i64 } %37, { i8*, i64 }* %6, align 8, !dbg !1555
  store i8 %38, i8* %7, align 1, !dbg !1555
  %39 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1555
  %40 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1555
  store { i8*, i64 } %37, { i8*, i64 }* %39, align 8, !dbg !1555
  store i8 %38, i8* %40, align 1, !dbg !1555
  ret void, !dbg !1555

if.done2:                                         ; preds = %if.done
  br label %if.init, !dbg !1556

if.init:                                          ; preds = %if.done2
  %41 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1536
  %42 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %41, i32 0, i32 3, !dbg !1536
  %43 = load i64, i64* %42, align 8, !dbg !1536
  %44 = load i64, i64* %10, align 8, !dbg !1536
  %45 = call { i64, i64 } @runtime.safe_add-382(i64 %43, i64 %44), !dbg !1536
  %46 = bitcast { i64, i8 }* %12 to { i64, i64 }*, !dbg !1536
  store { i64, i64 } %45, { i64, i64 }* %46, align 8, !dbg !1536
  %47 = load { i64, i8 }, { i64, i8 }* %12, align 8, !dbg !1536
  %48 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %12, i32 0, i32 0, !dbg !1536
  %49 = load i64, i64* %48, align 8, !dbg !1536
  %50 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %12, i32 0, i32 1, !dbg !1536
  %51 = load i8, i8* %50, align 1, !dbg !1536
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1557, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i64 %49, i64* %13, align 8, !dbg !1536
  store i8 %51, i8* %14, align 1, !dbg !1536
  %52 = load i8, i8* %14, align 1, !dbg !1536
  %53 = icmp ne i8 %52, 0, !dbg !1536
  br i1 %53, label %cmp.or, label %if.then3, !dbg !1536

cmp.or:                                           ; preds = %if.init
  %54 = load i64, i64* %13, align 8, !dbg !1536
  %55 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1536
  %56 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %55, i32 0, i32 4, !dbg !1536
  %57 = load i64, i64* %56, align 8, !dbg !1536
  %58 = icmp ugt i64 %54, %57, !dbg !1536
  %59 = zext i1 %58 to i8, !dbg !1536
  %60 = icmp ne i8 %59, 0, !dbg !1536
  br i1 %60, label %if.then3, label %if.done4, !dbg !1536

if.then3:                                         ; preds = %cmp.or, %if.init
  store i8 1, i8* %7, align 1, !dbg !1560
  %61 = load { i8*, i64 }, { i8*, i64 }* %6, align 8, !dbg !1562
  %62 = load i8, i8* %7, align 1, !dbg !1562
  store { i8*, i64 } %61, { i8*, i64 }* %6, align 8, !dbg !1562
  store i8 %62, i8* %7, align 1, !dbg !1562
  %63 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1562
  %64 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1562
  store { i8*, i64 } %61, { i8*, i64 }* %63, align 8, !dbg !1562
  store i8 %62, i8* %64, align 1, !dbg !1562
  ret void, !dbg !1562

if.done4:                                         ; preds = %cmp.or
  %65 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1538
  %66 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %65, i32 0, i32 3, !dbg !1538
  %67 = load i64, i64* %66, align 8, !dbg !1538
  %68 = load i64, i64* %8, align 8, !dbg !1538
  %69 = add i64 %67, %68, !dbg !1538
  %70 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1538
  %71 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %70, i32 0, i32 2, !dbg !1538
  %72 = load i8*, i8** %71, align 8, !dbg !1538
  %73 = getelementptr i8, i8* %72, i64 %69, !dbg !1538
  store i8* %73, i8** %15, align 8, !dbg !1538
  %74 = load i8*, i8** %15, align 8, !dbg !1538
  call void @runtime.multi_pointer_slice_expr_error(%..string { i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"csbs$84", i64 0, i64 0), i64 69 }, i32 83, i32 49, i64 0, i64 %1), !dbg !1538
  %75 = getelementptr i8, i8* %74, i64 0, !dbg !1538
  %76 = sub i64 %1, 0, !dbg !1538
  %77 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %16, i32 0, i32 0, !dbg !1538
  %78 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %16, i32 0, i32 1, !dbg !1538
  store i8* %75, i8** %77, align 8, !dbg !1538
  store i64 %76, i64* %78, align 8, !dbg !1538
  %79 = load { i8*, i64 }, { i8*, i64 }* %16, align 8, !dbg !1538
  store { i8*, i64 } %79, { i8*, i64 }* %6, align 8, !dbg !1538
  %80 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1563
  %81 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %80, i32 0, i32 3, !dbg !1563
  %82 = load i64, i64* %10, align 8, !dbg !1563
  %83 = load i64, i64* %81, align 8, !dbg !1563
  %84 = add i64 %83, %82, !dbg !1563
  store i64 %84, i64* %81, align 8, !dbg !1563
  %85 = load { i8*, i64 }, { i8*, i64 }* %6, align 8, !dbg !1564
  %86 = load i8, i8* %7, align 1, !dbg !1564
  store { i8*, i64 } %85, { i8*, i64 }* %6, align 8, !dbg !1564
  store i8 %86, i8* %7, align 1, !dbg !1564
  %87 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1564
  %88 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1564
  store { i8*, i64 } %85, { i8*, i64 }* %87, align 8, !dbg !1564
  store i8 %86, i8* %88, align 1, !dbg !1564
  ret void, !dbg !1564
}

define internal void @runtime.arena_alloc({ { i8*, i64 }, i8 }* noalias sret %agg.result, %runtime.Arena* %0, i64 %1, i64 %2, %runtime.Source_Code_Location* byval align 8 %3, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1565 {
decls:
  %4 = alloca %runtime.Arena*, align 8
  call void @llvm.dbg.value(metadata %runtime.Arena* %0, metadata !1569, metadata !DIExpression()), !dbg !1570
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !1571, metadata !DIExpression()), !dbg !1572
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %2, metadata !1573, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %3, metadata !1575, metadata !DIExpression()), !dbg !1576
  %7 = alloca { i8*, i64 }, align 8
  %8 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1577, metadata !DIExpression()), !dbg !1578
  %9 = alloca i64, align 8, !dbg !1579
  %10 = alloca { i64, i8 }, align 8, !dbg !1581
  %11 = alloca i64, align 8, !dbg !1582
  %12 = alloca %runtime.Allocator, align 8, !dbg !1585
  %13 = alloca { %runtime.Memory_Block*, i8 }, align 8, !dbg !1588
  %14 = alloca %runtime.Memory_Block*, align 8, !dbg !1588
  %15 = alloca i64, align 8, !dbg !1589
  %16 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !1590
  br label %entry, !dbg !1578

entry:                                            ; preds = %decls
  store %runtime.Arena* %0, %runtime.Arena** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %7, metadata !1591, metadata !DIExpression()), !dbg !1592
  %18 = bitcast { i8*, i64 }* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1593, metadata !DIExpression()), !dbg !1594
  store i8 0, i8* %8, align 1
  %20 = bitcast i8* %__.context_ptr to %runtime.Context*
  %21 = sub i64 %2, 1, !dbg !1595
  %22 = and i64 %2, %21, !dbg !1595
  %23 = icmp eq i64 %22, 0, !dbg !1595
  %24 = zext i1 %23 to i8, !dbg !1595
  %25 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %3, align 8, !dbg !1595
  %26 = icmp ne i8 %24, 0, !dbg !1595
  %27 = bitcast %runtime.Context* %20 to i8*, !dbg !1595
  call void @runtime.assert(i1 zeroext %26, %..string { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"csbs$86", i64 0, i64 0), i64 26 }, %runtime.Source_Code_Location* byval %3, i8* %27), !dbg !1595
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1596, metadata !DIExpression()), !dbg !1579
  store i64 %1, i64* %9, align 8, !dbg !1579
  %28 = load i64, i64* %9, align 8, !dbg !1597
  %29 = icmp eq i64 %28, 0, !dbg !1597
  %30 = zext i1 %29 to i8, !dbg !1597
  %31 = icmp ne i8 %30, 0, !dbg !1597
  br i1 %31, label %if.then, label %if.done, !dbg !1597

if.then:                                          ; preds = %entry
  %32 = load { i8*, i64 }, { i8*, i64 }* %7, align 8, !dbg !1598
  %33 = load i8, i8* %8, align 1, !dbg !1598
  store { i8*, i64 } %32, { i8*, i64 }* %7, align 8, !dbg !1598
  store i8 %33, i8* %8, align 1, !dbg !1598
  %34 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1598
  %35 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1598
  store { i8*, i64 } %32, { i8*, i64 }* %34, align 8, !dbg !1598
  store i8 %33, i8* %35, align 1, !dbg !1598
  ret void, !dbg !1598

if.done:                                          ; preds = %entry
  %36 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1581
  %37 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %36, i32 0, i32 1, !dbg !1581
  %38 = load %runtime.Memory_Block*, %runtime.Memory_Block** %37, align 8, !dbg !1581
  %39 = icmp eq %runtime.Memory_Block* %38, null, !dbg !1581
  %40 = zext i1 %39 to i8, !dbg !1581
  %41 = icmp ne i8 %40, 0, !dbg !1581
  br i1 %41, label %if.then1, label %cmp.or, !dbg !1581

cmp.or:                                           ; preds = %if.done
  %42 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1581
  %43 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %42, i32 0, i32 1, !dbg !1581
  %44 = load %runtime.Memory_Block*, %runtime.Memory_Block** %43, align 8, !dbg !1581
  %45 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %44, i32 0, i32 3, !dbg !1581
  %46 = load i64, i64* %45, align 8, !dbg !1581
  %47 = load i64, i64* %9, align 8, !dbg !1581
  %48 = call { i64, i64 } @runtime.safe_add-382(i64 %46, i64 %47), !dbg !1581
  %49 = bitcast { i64, i8 }* %10 to { i64, i64 }*, !dbg !1581
  store { i64, i64 } %48, { i64, i64 }* %49, align 8, !dbg !1581
  %50 = load { i64, i8 }, { i64, i8 }* %10, align 8, !dbg !1581
  %51 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %10, i32 0, i32 0, !dbg !1581
  %52 = load i64, i64* %51, align 8, !dbg !1581
  %53 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %10, i32 0, i32 1, !dbg !1581
  %54 = load i8, i8* %53, align 1, !dbg !1581
  %55 = trunc i8 %54 to i1, !dbg !1581
  br i1 %55, label %or_else.then, label %or_else.else, !dbg !1581

or_else.then:                                     ; preds = %cmp.or
  br label %or_else.done, !dbg !1581

or_else.else:                                     ; preds = %cmp.or
  br label %or_else.done, !dbg !1581

or_else.done:                                     ; preds = %or_else.else, %or_else.then
  %56 = phi i64 [ %52, %or_else.then ], [ 0, %or_else.else ], !dbg !1581
  %57 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1581
  %58 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %57, i32 0, i32 1, !dbg !1581
  %59 = load %runtime.Memory_Block*, %runtime.Memory_Block** %58, align 8, !dbg !1581
  %60 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %59, i32 0, i32 4, !dbg !1581
  %61 = load i64, i64* %60, align 8, !dbg !1581
  %62 = icmp ugt i64 %56, %61, !dbg !1581
  %63 = zext i1 %62 to i8, !dbg !1581
  %64 = icmp ne i8 %63, 0, !dbg !1581
  br i1 %64, label %if.then1, label %if.done6, !dbg !1581

if.then1:                                         ; preds = %or_else.done, %if.done
  %65 = load i64, i64* %9, align 8, !dbg !1601
  %66 = call i64 @runtime.arena_alloc.align_forward_uint-0(i64 %65, i64 %2), !dbg !1601
  store i64 %66, i64* %9, align 8, !dbg !1601
  %67 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1602
  %68 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %67, i32 0, i32 4, !dbg !1602
  %69 = load i64, i64* %68, align 8, !dbg !1602
  %70 = icmp eq i64 %69, 0, !dbg !1602
  %71 = zext i1 %70 to i8, !dbg !1602
  %72 = icmp ne i8 %71, 0, !dbg !1602
  br i1 %72, label %if.then2, label %if.done3, !dbg !1602

if.then2:                                         ; preds = %if.then1
  %73 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1603
  %74 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %73, i32 0, i32 4, !dbg !1603
  store i64 4194304, i64* %74, align 8, !dbg !1603
  br label %if.done3, !dbg !1603

if.done3:                                         ; preds = %if.then2, %if.then1
  %75 = load i64, i64* %9, align 8, !dbg !1582
  %76 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1582
  %77 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %76, i32 0, i32 4, !dbg !1582
  %78 = load i64, i64* %77, align 8, !dbg !1582
  %79 = icmp ugt i64 %75, %78, !dbg !1582
  %80 = select i1 %79, i64 %75, i64 %78, !dbg !1582
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1606, metadata !DIExpression()), !dbg !1582
  store i64 %80, i64* %11, align 8, !dbg !1582
  %81 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1607
  %82 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %81, i32 0, i32 0, !dbg !1607
  %83 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %82, i32 0, i32 0, !dbg !1607
  %84 = load i8*, i8** %83, align 8, !dbg !1607
  %85 = icmp eq i8* %84, null, !dbg !1607
  %86 = zext i1 %85 to i8, !dbg !1607
  %87 = icmp ne i8 %86, 0, !dbg !1607
  br i1 %87, label %if.then4, label %if.done5, !dbg !1607

if.then4:                                         ; preds = %if.done3
  %88 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1585
  %89 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %88, i32 0, i32 0, !dbg !1585
  %90 = bitcast %runtime.Context* %20 to i8*, !dbg !1585
  %91 = call { i64, i64 } @runtime.default_allocator(i8* %90), !dbg !1585
  %92 = bitcast %runtime.Allocator* %12 to { i64, i64 }*, !dbg !1585
  store { i64, i64 } %91, { i64, i64 }* %92, align 8, !dbg !1585
  %93 = load %runtime.Allocator, %runtime.Allocator* %12, align 8, !dbg !1585
  store %runtime.Allocator %93, %runtime.Allocator* %89, align 8, !dbg !1585
  br label %if.done5, !dbg !1585

if.done5:                                         ; preds = %if.then4, %if.done3
  %94 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1588
  %95 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %94, i32 0, i32 0, !dbg !1588
  %96 = load %runtime.Allocator, %runtime.Allocator* %95, align 8, !dbg !1588
  %97 = load i64, i64* %11, align 8, !dbg !1588
  %98 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %3, align 8, !dbg !1588
  %99 = bitcast %runtime.Allocator* %95 to { i64, i64 }*, !dbg !1588
  %100 = load { i64, i64 }, { i64, i64 }* %99, align 8, !dbg !1588
  %101 = bitcast %runtime.Context* %20 to i8*, !dbg !1588
  %102 = call { i64, i64 } @runtime.memory_block_alloc({ i64, i64 } %100, i64 %97, %runtime.Source_Code_Location* byval %3, i8* %101), !dbg !1588
  %103 = bitcast { %runtime.Memory_Block*, i8 }* %13 to { i64, i64 }*, !dbg !1588
  store { i64, i64 } %102, { i64, i64 }* %103, align 8, !dbg !1588
  %104 = load { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %13, align 8, !dbg !1588
  %105 = getelementptr inbounds { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %13, i32 0, i32 0, !dbg !1588
  %106 = load %runtime.Memory_Block*, %runtime.Memory_Block** %105, align 8, !dbg !1588
  %107 = getelementptr inbounds { %runtime.Memory_Block*, i8 }, { %runtime.Memory_Block*, i8 }* %13, i32 0, i32 1, !dbg !1588
  %108 = load i8, i8* %107, align 1, !dbg !1588
  %109 = icmp eq i8 %108, 0, !dbg !1588
  br i1 %109, label %or_return.continue, label %or_return.return, !dbg !1588

or_return.return:                                 ; preds = %if.done5
  store i8 %108, i8* %8, align 1, !dbg !1588
  %110 = load { i8*, i64 }, { i8*, i64 }* %7, align 8, !dbg !1588
  %111 = load i8, i8* %8, align 1, !dbg !1588
  store { i8*, i64 } %110, { i8*, i64 }* %7, align 8, !dbg !1588
  store i8 %111, i8* %8, align 1, !dbg !1588
  %112 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1588
  %113 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1588
  store { i8*, i64 } %110, { i8*, i64 }* %112, align 8, !dbg !1588
  store i8 %111, i8* %113, align 1, !dbg !1588
  ret void, !dbg !1588

or_return.continue:                               ; preds = %if.done5
  call void @llvm.dbg.declare(metadata %runtime.Memory_Block** %14, metadata !1608, metadata !DIExpression()), !dbg !1588
  store %runtime.Memory_Block* %106, %runtime.Memory_Block** %14, align 8, !dbg !1588
  %114 = load %runtime.Memory_Block*, %runtime.Memory_Block** %14, align 8, !dbg !1609
  %115 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %114, i32 0, i32 0, !dbg !1609
  %116 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1609
  %117 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %116, i32 0, i32 1, !dbg !1609
  %118 = load %runtime.Memory_Block*, %runtime.Memory_Block** %117, align 8, !dbg !1609
  store %runtime.Memory_Block* %118, %runtime.Memory_Block** %115, align 8, !dbg !1609
  %119 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1610
  %120 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %119, i32 0, i32 1, !dbg !1610
  %121 = load %runtime.Memory_Block*, %runtime.Memory_Block** %14, align 8, !dbg !1610
  store %runtime.Memory_Block* %121, %runtime.Memory_Block** %120, align 8, !dbg !1610
  %122 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1611
  %123 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %122, i32 0, i32 3, !dbg !1611
  %124 = load %runtime.Memory_Block*, %runtime.Memory_Block** %14, align 8, !dbg !1611
  %125 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %124, i32 0, i32 4, !dbg !1611
  %126 = load i64, i64* %125, align 8, !dbg !1611
  %127 = load i64, i64* %123, align 8, !dbg !1611
  %128 = add i64 %127, %126, !dbg !1611
  store i64 %128, i64* %123, align 8, !dbg !1611
  br label %if.done6, !dbg !1611

if.done6:                                         ; preds = %or_return.continue, %or_else.done
  %129 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1589
  %130 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %129, i32 0, i32 1, !dbg !1589
  %131 = load %runtime.Memory_Block*, %runtime.Memory_Block** %130, align 8, !dbg !1589
  %132 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %131, i32 0, i32 3, !dbg !1589
  %133 = load i64, i64* %132, align 8, !dbg !1589
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1612, metadata !DIExpression()), !dbg !1589
  store i64 %133, i64* %15, align 8, !dbg !1589
  %134 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1590
  %135 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %134, i32 0, i32 1, !dbg !1590
  %136 = load %runtime.Memory_Block*, %runtime.Memory_Block** %135, align 8, !dbg !1590
  %137 = load i64, i64* %9, align 8, !dbg !1590
  %138 = bitcast { { i8*, i64 }, i8 }* %16 to i8*, !dbg !1590
  call void @llvm.memset.p0i8.i64(i8* %138, i8 0, i64 24, i1 false), !dbg !1590
  %139 = bitcast %runtime.Context* %20 to i8*, !dbg !1590
  call void @runtime.alloc_from_memory_block({ { i8*, i64 }, i8 }* sret %16, %runtime.Memory_Block* %136, i64 %137, i64 %2, i8* %139), !dbg !1590
  %140 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %16, align 8, !dbg !1590
  %141 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %16, i32 0, i32 0, !dbg !1590
  %142 = load { i8*, i64 }, { i8*, i64 }* %141, align 8, !dbg !1590
  %143 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %16, i32 0, i32 1, !dbg !1590
  %144 = load i8, i8* %143, align 1, !dbg !1590
  store { i8*, i64 } %142, { i8*, i64 }* %7, align 8, !dbg !1590
  store i8 %144, i8* %8, align 1, !dbg !1590
  %145 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1613
  %146 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %145, i32 0, i32 2, !dbg !1613
  %147 = load %runtime.Arena*, %runtime.Arena** %4, align 8, !dbg !1613
  %148 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %147, i32 0, i32 1, !dbg !1613
  %149 = load %runtime.Memory_Block*, %runtime.Memory_Block** %148, align 8, !dbg !1613
  %150 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %149, i32 0, i32 3, !dbg !1613
  %151 = load i64, i64* %150, align 8, !dbg !1613
  %152 = load i64, i64* %15, align 8, !dbg !1613
  %153 = sub i64 %151, %152, !dbg !1613
  %154 = load i64, i64* %146, align 8, !dbg !1613
  %155 = add i64 %154, %153, !dbg !1613
  store i64 %155, i64* %146, align 8, !dbg !1613
  %156 = load { i8*, i64 }, { i8*, i64 }* %7, align 8, !dbg !1614
  %157 = load i8, i8* %8, align 1, !dbg !1614
  store { i8*, i64 } %156, { i8*, i64 }* %7, align 8, !dbg !1614
  store i8 %157, i8* %8, align 1, !dbg !1614
  %158 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1614
  %159 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1614
  store { i8*, i64 } %156, { i8*, i64 }* %158, align 8, !dbg !1614
  store i8 %157, i8* %159, align 1, !dbg !1614
  ret void, !dbg !1614
}

define internal void @runtime.arena_free_last_memory_block(%runtime.Arena* %0, %runtime.Source_Code_Location* byval align 8 %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1615 {
decls:
  %2 = alloca %runtime.Arena*, align 8
  call void @llvm.dbg.value(metadata %runtime.Arena* %0, metadata !1618, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %1, metadata !1620, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1622, metadata !DIExpression()), !dbg !1623
  %3 = alloca %runtime.Memory_Block*, align 8, !dbg !1624
  br label %entry, !dbg !1623

entry:                                            ; preds = %decls
  store %runtime.Arena* %0, %runtime.Arena** %2, align 8
  %4 = bitcast i8* %__.context_ptr to %runtime.Context*
  br label %if.init, !dbg !1627

if.init:                                          ; preds = %entry
  %5 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1624
  %6 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %5, i32 0, i32 1, !dbg !1624
  %7 = load %runtime.Memory_Block*, %runtime.Memory_Block** %6, align 8, !dbg !1624
  call void @llvm.dbg.declare(metadata %runtime.Memory_Block** %3, metadata !1628, metadata !DIExpression()), !dbg !1624
  store %runtime.Memory_Block* %7, %runtime.Memory_Block** %3, align 8, !dbg !1624
  %8 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1624
  %9 = icmp ne %runtime.Memory_Block* %8, null, !dbg !1624
  %10 = zext i1 %9 to i8, !dbg !1624
  %11 = icmp ne i8 %10, 0, !dbg !1624
  br i1 %11, label %if.then, label %if.done, !dbg !1624

if.then:                                          ; preds = %if.init
  %12 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1629
  %13 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %12, i32 0, i32 1, !dbg !1629
  %14 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1629
  %15 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %14, i32 0, i32 0, !dbg !1629
  %16 = load %runtime.Memory_Block*, %runtime.Memory_Block** %15, align 8, !dbg !1629
  store %runtime.Memory_Block* %16, %runtime.Memory_Block** %13, align 8, !dbg !1629
  %17 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1631
  %18 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %17, i32 0, i32 3, !dbg !1631
  %19 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1631
  %20 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %19, i32 0, i32 4, !dbg !1631
  %21 = load i64, i64* %20, align 8, !dbg !1631
  %22 = load i64, i64* %18, align 8, !dbg !1631
  %23 = sub i64 %22, %21, !dbg !1631
  store i64 %23, i64* %18, align 8, !dbg !1631
  %24 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1632
  %25 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %1, align 8, !dbg !1632
  %26 = bitcast %runtime.Context* %4 to i8*, !dbg !1632
  call void @runtime.memory_block_dealloc(%runtime.Memory_Block* %24, %runtime.Source_Code_Location* byval %1, i8* %26), !dbg !1632
  br label %if.done, !dbg !1632

if.done:                                          ; preds = %if.then, %if.init
  ret void, !dbg !1633
}

define internal void @runtime.arena_free_all(%runtime.Arena* %0, %runtime.Source_Code_Location* byval align 8 %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1634 {
decls:
  %2 = alloca %runtime.Arena*, align 8
  call void @llvm.dbg.value(metadata %runtime.Arena* %0, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %1, metadata !1637, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1639, metadata !DIExpression()), !dbg !1640
  br label %entry, !dbg !1640

entry:                                            ; preds = %decls
  store %runtime.Arena* %0, %runtime.Arena** %2, align 8
  %3 = bitcast i8* %__.context_ptr to %runtime.Context*
  br label %for.loop, !dbg !1641

for.loop:                                         ; preds = %for.body, %entry
  %4 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1644
  %5 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %4, i32 0, i32 1, !dbg !1644
  %6 = load %runtime.Memory_Block*, %runtime.Memory_Block** %5, align 8, !dbg !1644
  %7 = icmp ne %runtime.Memory_Block* %6, null, !dbg !1644
  %8 = zext i1 %7 to i8, !dbg !1644
  %9 = icmp ne i8 %8, 0, !dbg !1644
  br i1 %9, label %cmp.and, label %for.done, !dbg !1644

cmp.and:                                          ; preds = %for.loop
  %10 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1644
  %11 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %10, i32 0, i32 1, !dbg !1644
  %12 = load %runtime.Memory_Block*, %runtime.Memory_Block** %11, align 8, !dbg !1644
  %13 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %12, i32 0, i32 0, !dbg !1644
  %14 = load %runtime.Memory_Block*, %runtime.Memory_Block** %13, align 8, !dbg !1644
  %15 = icmp ne %runtime.Memory_Block* %14, null, !dbg !1644
  %16 = zext i1 %15 to i8, !dbg !1644
  %17 = icmp ne i8 %16, 0, !dbg !1644
  br i1 %17, label %for.body, label %for.done, !dbg !1644

for.body:                                         ; preds = %cmp.and
  %18 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %1, align 8, !dbg !1645
  %19 = bitcast %runtime.Context* %3 to i8*, !dbg !1645
  call void @runtime.arena_free_last_memory_block(%runtime.Arena* %0, %runtime.Source_Code_Location* byval %1, i8* %19), !dbg !1645
  br label %for.loop, !dbg !1647

for.done:                                         ; preds = %cmp.and, %for.loop
  %20 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1648
  %21 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %20, i32 0, i32 1, !dbg !1648
  %22 = load %runtime.Memory_Block*, %runtime.Memory_Block** %21, align 8, !dbg !1648
  %23 = icmp ne %runtime.Memory_Block* %22, null, !dbg !1648
  %24 = zext i1 %23 to i8, !dbg !1648
  %25 = icmp ne i8 %24, 0, !dbg !1648
  br i1 %25, label %if.then, label %if.done, !dbg !1648

if.then:                                          ; preds = %for.done
  %26 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1649
  %27 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %26, i32 0, i32 1, !dbg !1649
  %28 = load %runtime.Memory_Block*, %runtime.Memory_Block** %27, align 8, !dbg !1649
  %29 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %28, i32 0, i32 2, !dbg !1649
  %30 = load i8*, i8** %29, align 8, !dbg !1649
  %31 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1649
  %32 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %31, i32 0, i32 1, !dbg !1649
  %33 = load %runtime.Memory_Block*, %runtime.Memory_Block** %32, align 8, !dbg !1649
  %34 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %33, i32 0, i32 3, !dbg !1649
  %35 = load i64, i64* %34, align 8, !dbg !1649
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %35, i1 false), !dbg !1649
  %36 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1652
  %37 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %36, i32 0, i32 1, !dbg !1652
  %38 = load %runtime.Memory_Block*, %runtime.Memory_Block** %37, align 8, !dbg !1652
  %39 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %38, i32 0, i32 3, !dbg !1652
  store i64 0, i64* %39, align 8, !dbg !1652
  br label %if.done, !dbg !1652

if.done:                                          ; preds = %if.then, %for.done
  %40 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1653
  %41 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %40, i32 0, i32 2, !dbg !1653
  store i64 0, i64* %41, align 8, !dbg !1653
  ret void, !dbg !1654
}

define internal void @runtime.arena_destroy(%runtime.Arena* %0, %runtime.Source_Code_Location* byval align 8 %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1655 {
decls:
  %2 = alloca %runtime.Arena*, align 8
  call void @llvm.dbg.value(metadata %runtime.Arena* %0, metadata !1656, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %1, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1660, metadata !DIExpression()), !dbg !1661
  %3 = alloca %runtime.Memory_Block*, align 8, !dbg !1662
  br label %entry, !dbg !1661

entry:                                            ; preds = %decls
  store %runtime.Arena* %0, %runtime.Arena** %2, align 8
  %4 = bitcast i8* %__.context_ptr to %runtime.Context*
  br label %for.loop, !dbg !1666

for.loop:                                         ; preds = %for.body, %entry
  %5 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1667
  %6 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %5, i32 0, i32 1, !dbg !1667
  %7 = load %runtime.Memory_Block*, %runtime.Memory_Block** %6, align 8, !dbg !1667
  %8 = icmp ne %runtime.Memory_Block* %7, null, !dbg !1667
  %9 = zext i1 %8 to i8, !dbg !1667
  %10 = icmp ne i8 %9, 0, !dbg !1667
  br i1 %10, label %for.body, label %for.done, !dbg !1667

for.body:                                         ; preds = %for.loop
  %11 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1662
  %12 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %11, i32 0, i32 1, !dbg !1662
  %13 = load %runtime.Memory_Block*, %runtime.Memory_Block** %12, align 8, !dbg !1662
  call void @llvm.dbg.declare(metadata %runtime.Memory_Block** %3, metadata !1668, metadata !DIExpression()), !dbg !1662
  store %runtime.Memory_Block* %13, %runtime.Memory_Block** %3, align 8, !dbg !1662
  %14 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1669
  %15 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %14, i32 0, i32 1, !dbg !1669
  %16 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1669
  %17 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %16, i32 0, i32 0, !dbg !1669
  %18 = load %runtime.Memory_Block*, %runtime.Memory_Block** %17, align 8, !dbg !1669
  store %runtime.Memory_Block* %18, %runtime.Memory_Block** %15, align 8, !dbg !1669
  %19 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1670
  %20 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %19, i32 0, i32 3, !dbg !1670
  %21 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1670
  %22 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %21, i32 0, i32 4, !dbg !1670
  %23 = load i64, i64* %22, align 8, !dbg !1670
  %24 = load i64, i64* %20, align 8, !dbg !1670
  %25 = sub i64 %24, %23, !dbg !1670
  store i64 %25, i64* %20, align 8, !dbg !1670
  %26 = load %runtime.Memory_Block*, %runtime.Memory_Block** %3, align 8, !dbg !1671
  %27 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %1, align 8, !dbg !1671
  %28 = bitcast %runtime.Context* %4 to i8*, !dbg !1671
  call void @runtime.memory_block_dealloc(%runtime.Memory_Block* %26, %runtime.Source_Code_Location* byval %1, i8* %28), !dbg !1671
  br label %for.loop, !dbg !1672

for.done:                                         ; preds = %for.loop
  %29 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1673
  %30 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %29, i32 0, i32 2, !dbg !1673
  store i64 0, i64* %30, align 8, !dbg !1673
  %31 = load %runtime.Arena*, %runtime.Arena** %2, align 8, !dbg !1674
  %32 = getelementptr inbounds %runtime.Arena, %runtime.Arena* %31, i32 0, i32 3, !dbg !1674
  store i64 0, i64* %32, align 8, !dbg !1674
  ret void, !dbg !1675
}

define internal void @runtime.arena_allocator_proc({ { i8*, i64 }, i8 }* noalias sret %agg.result, i8* %0, i8 %1, i64 %2, i64 %3, i8* %4, i64 %5, %runtime.Source_Code_Location* byval align 8 %6, i8* noalias nocapture nonnull %__.context_ptr) !dbg !1676 {
decls:
  %7 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1679, metadata !DIExpression()), !dbg !1680
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8 %1, metadata !1681, metadata !DIExpression()), !dbg !1682
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %2, metadata !1683, metadata !DIExpression()), !dbg !1684
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1685, metadata !DIExpression()), !dbg !1686
  %11 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %4, metadata !1687, metadata !DIExpression()), !dbg !1688
  %12 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %5, metadata !1689, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %6, metadata !1691, metadata !DIExpression()), !dbg !1692
  %13 = alloca { i8*, i64 }, align 8
  %14 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !1693, metadata !DIExpression()), !dbg !1694
  %15 = alloca %runtime.Arena*, align 8, !dbg !1695
  %16 = alloca i64, align 8, !dbg !1697
  %17 = alloca i64, align 8, !dbg !1697
  %18 = alloca i64, align 8, !dbg !1698
  %19 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !1699
  %20 = alloca i8*, align 8, !dbg !1701
  %21 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !1702
  %22 = alloca { i8*, i64 }, align 8, !dbg !1704
  %23 = alloca { i8*, i64 }, align 8, !dbg !1705
  %24 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !1706
  %25 = alloca { i8*, i64 }, align 8, !dbg !1706
  %26 = alloca { i8*, i64 }, align 8, !dbg !1707
  %27 = alloca i8*, align 8, !dbg !1708
  br label %entry, !dbg !1694

entry:                                            ; preds = %decls
  store i8* %0, i8** %7, align 8
  store i8 %1, i8* %8, align 1
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %28 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %13, metadata !1709, metadata !DIExpression()), !dbg !1710
  %29 = bitcast { i8*, i64 }* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 16, i1 false)
  %30 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1711, metadata !DIExpression()), !dbg !1712
  store i8 0, i8* %14, align 1
  %31 = bitcast i8* %__.context_ptr to %runtime.Context*
  %32 = bitcast i8* %0 to %runtime.Arena*, !dbg !1695
  call void @llvm.dbg.declare(metadata %runtime.Arena** %15, metadata !1713, metadata !DIExpression()), !dbg !1695
  store %runtime.Arena* %32, %runtime.Arena** %15, align 8, !dbg !1695
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1714, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1715, metadata !DIExpression()), !dbg !1716
  store i64 %2, i64* %16, align 8, !dbg !1697
  store i64 %3, i64* %17, align 8, !dbg !1697
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1717, metadata !DIExpression()), !dbg !1698
  store i64 %5, i64* %18, align 8, !dbg !1698
  switch i8 %1, label %switch.done15 [
    i8 0, label %switch.case.body
    i8 6, label %switch.case.body
    i8 1, label %switch.case.body1
    i8 2, label %switch.case.body2
    i8 3, label %switch.case.body3
    i8 4, label %switch.case.body11
    i8 5, label %switch.case.body14
  ], !dbg !1718

switch.case.body:                                 ; preds = %entry, %entry
  %33 = load %runtime.Arena*, %runtime.Arena** %15, align 8, !dbg !1699
  %34 = load i64, i64* %16, align 8, !dbg !1699
  %35 = load i64, i64* %17, align 8, !dbg !1699
  %36 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %6, align 8, !dbg !1699
  %37 = bitcast { { i8*, i64 }, i8 }* %19 to i8*, !dbg !1699
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 24, i1 false), !dbg !1699
  %38 = bitcast %runtime.Context* %31 to i8*, !dbg !1699
  call void @runtime.arena_alloc({ { i8*, i64 }, i8 }* sret %19, %runtime.Arena* %33, i64 %34, i64 %35, %runtime.Source_Code_Location* byval %6, i8* %38), !dbg !1699
  %39 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %19, align 8, !dbg !1699
  %40 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %19, i32 0, i32 0, !dbg !1699
  %41 = load { i8*, i64 }, { i8*, i64 }* %40, align 8, !dbg !1699
  %42 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %19, i32 0, i32 1, !dbg !1699
  %43 = load i8, i8* %42, align 1, !dbg !1699
  store { i8*, i64 } %41, { i8*, i64 }* %13, align 8, !dbg !1699
  store i8 %43, i8* %14, align 1, !dbg !1699
  %44 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1699
  %45 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1699
  store { i8*, i64 } %41, { i8*, i64 }* %44, align 8, !dbg !1699
  store i8 %43, i8* %45, align 1, !dbg !1699
  ret void, !dbg !1699

switch.case.body1:                                ; preds = %entry
  store i8 4, i8* %14, align 1, !dbg !1719
  br label %switch.done15, !dbg !1719

switch.case.body2:                                ; preds = %entry
  %46 = load %runtime.Arena*, %runtime.Arena** %15, align 8, !dbg !1720
  %47 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %6, align 8, !dbg !1720
  %48 = bitcast %runtime.Context* %31 to i8*, !dbg !1720
  call void @runtime.arena_free_all(%runtime.Arena* %46, %runtime.Source_Code_Location* byval %6, i8* %48), !dbg !1720
  br label %switch.done15, !dbg !1720

switch.case.body3:                                ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1721, metadata !DIExpression()), !dbg !1701
  store i8* %4, i8** %20, align 8, !dbg !1701
  %49 = load i8*, i8** %20, align 8, !dbg !1722
  %50 = icmp eq i8* %49, null, !dbg !1722
  %51 = zext i1 %50 to i8, !dbg !1722
  %52 = icmp eq i8 1, %51, !dbg !1722
  br i1 %52, label %switch.case.body4, label %switch.case.next, !dbg !1722

switch.case.next:                                 ; preds = %switch.case.body3
  %53 = load i64, i64* %16, align 8, !dbg !1702
  %54 = load i64, i64* %18, align 8, !dbg !1702
  %55 = icmp eq i64 %53, %54, !dbg !1702
  %56 = zext i1 %55 to i8, !dbg !1702
  %57 = icmp eq i8 1, %56, !dbg !1702
  br i1 %57, label %switch.case.body6, label %switch.case.next5, !dbg !1702

switch.case.body4:                                ; preds = %switch.case.body3
  %58 = load %runtime.Arena*, %runtime.Arena** %15, align 8, !dbg !1702
  %59 = load i64, i64* %16, align 8, !dbg !1702
  %60 = load i64, i64* %17, align 8, !dbg !1702
  %61 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %6, align 8, !dbg !1702
  %62 = bitcast { { i8*, i64 }, i8 }* %21 to i8*, !dbg !1702
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 24, i1 false), !dbg !1702
  %63 = bitcast %runtime.Context* %31 to i8*, !dbg !1702
  call void @runtime.arena_alloc({ { i8*, i64 }, i8 }* sret %21, %runtime.Arena* %58, i64 %59, i64 %60, %runtime.Source_Code_Location* byval %6, i8* %63), !dbg !1702
  %64 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %21, align 8, !dbg !1702
  %65 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %21, i32 0, i32 0, !dbg !1702
  %66 = load { i8*, i64 }, { i8*, i64 }* %65, align 8, !dbg !1702
  %67 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %21, i32 0, i32 1, !dbg !1702
  %68 = load i8, i8* %67, align 1, !dbg !1702
  store { i8*, i64 } %66, { i8*, i64 }* %13, align 8, !dbg !1702
  store i8 %68, i8* %14, align 1, !dbg !1702
  %69 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1702
  %70 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1702
  store { i8*, i64 } %66, { i8*, i64 }* %69, align 8, !dbg !1702
  store i8 %68, i8* %70, align 1, !dbg !1702
  ret void, !dbg !1702

switch.case.next5:                                ; preds = %switch.case.next
  %71 = load i64, i64* %16, align 8, !dbg !1723
  %72 = icmp eq i64 %71, 0, !dbg !1723
  %73 = zext i1 %72 to i8, !dbg !1723
  %74 = icmp eq i8 1, %73, !dbg !1723
  br i1 %74, label %switch.case.body8, label %switch.case.next7, !dbg !1723

switch.case.body6:                                ; preds = %switch.case.next
  %75 = load i64, i64* %16, align 8, !dbg !1704
  %76 = load i8*, i8** %20, align 8, !dbg !1704
  call void @runtime.multi_pointer_slice_expr_error(%..string { i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"csbs$84", i64 0, i64 0), i64 69 }, i32 206, i32 19, i64 0, i64 %75), !dbg !1704
  %77 = getelementptr i8, i8* %76, i64 0, !dbg !1704
  %78 = sub i64 %75, 0, !dbg !1704
  %79 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %22, i32 0, i32 0, !dbg !1704
  %80 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %22, i32 0, i32 1, !dbg !1704
  store i8* %77, i8** %79, align 8, !dbg !1704
  store i64 %78, i64* %80, align 8, !dbg !1704
  %81 = load { i8*, i64 }, { i8*, i64 }* %22, align 8, !dbg !1704
  store { i8*, i64 } %81, { i8*, i64 }* %13, align 8, !dbg !1704
  %82 = load { i8*, i64 }, { i8*, i64 }* %13, align 8, !dbg !1723
  %83 = load i8, i8* %14, align 1, !dbg !1723
  store { i8*, i64 } %82, { i8*, i64 }* %13, align 8, !dbg !1723
  store i8 %83, i8* %14, align 1, !dbg !1723
  %84 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1723
  %85 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1723
  store { i8*, i64 } %82, { i8*, i64 }* %84, align 8, !dbg !1723
  store i8 %83, i8* %85, align 1, !dbg !1723
  ret void, !dbg !1723

switch.case.next7:                                ; preds = %switch.case.next5
  %86 = load i8*, i8** %20, align 8, !dbg !1724
  %87 = ptrtoint i8* %86 to i64, !dbg !1724
  %88 = load i64, i64* %17, align 8, !dbg !1724
  %89 = sub i64 %88, 1, !dbg !1724
  %90 = and i64 %87, %89, !dbg !1724
  %91 = icmp eq i64 %90, 0, !dbg !1724
  %92 = zext i1 %91 to i8, !dbg !1724
  %93 = icmp ne i8 %92, 0, !dbg !1724
  br i1 %93, label %logical.cmp.rhs, label %logical.cmp.done, !dbg !1724

switch.case.body8:                                ; preds = %switch.case.next5
  store i8 4, i8* %14, align 1, !dbg !1725
  %94 = load { i8*, i64 }, { i8*, i64 }* %13, align 8, !dbg !1724
  %95 = load i8, i8* %14, align 1, !dbg !1724
  store { i8*, i64 } %94, { i8*, i64 }* %13, align 8, !dbg !1724
  store i8 %95, i8* %14, align 1, !dbg !1724
  %96 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1724
  %97 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1724
  store { i8*, i64 } %94, { i8*, i64 }* %96, align 8, !dbg !1724
  store i8 %95, i8* %97, align 1, !dbg !1724
  ret void, !dbg !1724

logical.cmp.rhs:                                  ; preds = %switch.case.next7
  %98 = load i64, i64* %16, align 8, !dbg !1724
  %99 = load i64, i64* %18, align 8, !dbg !1724
  %100 = icmp ult i64 %98, %99, !dbg !1724
  %101 = zext i1 %100 to i8, !dbg !1724
  %102 = icmp ne i8 %101, 0, !dbg !1724
  br label %logical.cmp.done, !dbg !1724

logical.cmp.done:                                 ; preds = %logical.cmp.rhs, %switch.case.next7
  %103 = phi i1 [ false, %switch.case.next7 ], [ %102, %logical.cmp.rhs ], !dbg !1724
  %104 = zext i1 %103 to i8, !dbg !1724
  %105 = icmp eq i8 1, %104, !dbg !1724
  br i1 %105, label %switch.case.body10, label %switch.case.next9, !dbg !1724

switch.case.next9:                                ; preds = %logical.cmp.done
  br label %switch.done, !dbg !1726

switch.case.body10:                               ; preds = %logical.cmp.done
  %106 = load i64, i64* %16, align 8, !dbg !1705
  %107 = load i8*, i8** %20, align 8, !dbg !1705
  call void @runtime.multi_pointer_slice_expr_error(%..string { i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"csbs$84", i64 0, i64 0), i64 69 }, i32 213, i32 19, i64 0, i64 %106), !dbg !1705
  %108 = getelementptr i8, i8* %107, i64 0, !dbg !1705
  %109 = sub i64 %106, 0, !dbg !1705
  %110 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %23, i32 0, i32 0, !dbg !1705
  %111 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %23, i32 0, i32 1, !dbg !1705
  store i8* %108, i8** %110, align 8, !dbg !1705
  store i64 %109, i64* %111, align 8, !dbg !1705
  %112 = load { i8*, i64 }, { i8*, i64 }* %23, align 8, !dbg !1705
  store { i8*, i64 } %112, { i8*, i64 }* %13, align 8, !dbg !1705
  %113 = load { i8*, i64 }, { i8*, i64 }* %13, align 8, !dbg !1726
  %114 = load i8, i8* %14, align 1, !dbg !1726
  store { i8*, i64 } %113, { i8*, i64 }* %13, align 8, !dbg !1726
  store i8 %114, i8* %14, align 1, !dbg !1726
  %115 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1726
  %116 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1726
  store { i8*, i64 } %113, { i8*, i64 }* %115, align 8, !dbg !1726
  store i8 %114, i8* %116, align 1, !dbg !1726
  ret void, !dbg !1726

switch.done:                                      ; preds = %switch.case.next9
  %117 = load %runtime.Arena*, %runtime.Arena** %15, align 8, !dbg !1706
  %118 = load i64, i64* %16, align 8, !dbg !1706
  %119 = load i64, i64* %17, align 8, !dbg !1706
  %120 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %6, align 8, !dbg !1706
  %121 = bitcast { { i8*, i64 }, i8 }* %24 to i8*, !dbg !1706
  call void @llvm.memset.p0i8.i64(i8* %121, i8 0, i64 24, i1 false), !dbg !1706
  %122 = bitcast %runtime.Context* %31 to i8*, !dbg !1706
  call void @runtime.arena_alloc({ { i8*, i64 }, i8 }* sret %24, %runtime.Arena* %117, i64 %118, i64 %119, %runtime.Source_Code_Location* byval %6, i8* %122), !dbg !1706
  %123 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %24, align 8, !dbg !1706
  %124 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %24, i32 0, i32 0, !dbg !1706
  %125 = load { i8*, i64 }, { i8*, i64 }* %124, align 8, !dbg !1706
  %126 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %24, i32 0, i32 1, !dbg !1706
  %127 = load i8, i8* %126, align 1, !dbg !1706
  %128 = icmp eq i8 %127, 0, !dbg !1706
  br i1 %128, label %or_return.continue, label %or_return.return, !dbg !1706

or_return.return:                                 ; preds = %switch.done
  store i8 %127, i8* %14, align 1, !dbg !1706
  %129 = load { i8*, i64 }, { i8*, i64 }* %13, align 8, !dbg !1706
  %130 = load i8, i8* %14, align 1, !dbg !1706
  store { i8*, i64 } %129, { i8*, i64 }* %13, align 8, !dbg !1706
  store i8 %130, i8* %14, align 1, !dbg !1706
  %131 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1706
  %132 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1706
  store { i8*, i64 } %129, { i8*, i64 }* %131, align 8, !dbg !1706
  store i8 %130, i8* %132, align 1, !dbg !1706
  ret void, !dbg !1706

or_return.continue:                               ; preds = %switch.done
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %25, metadata !1727, metadata !DIExpression()), !dbg !1706
  store { i8*, i64 } %125, { i8*, i64 }* %25, align 8, !dbg !1706
  %133 = load { i8*, i64 }, { i8*, i64 }* %25, align 8, !dbg !1728
  %134 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %25, i32 0, i32 0, !dbg !1728
  %135 = load i8*, i8** %134, align 8, !dbg !1728
  %136 = icmp eq i8* %135, null, !dbg !1728
  %137 = zext i1 %136 to i8, !dbg !1728
  %138 = icmp ne i8 %137, 0, !dbg !1728
  br i1 %138, label %if.then, label %if.done, !dbg !1728

if.then:                                          ; preds = %or_return.continue
  %139 = load { i8*, i64 }, { i8*, i64 }* %13, align 8, !dbg !1729
  %140 = load i8, i8* %14, align 1, !dbg !1729
  store { i8*, i64 } %139, { i8*, i64 }* %13, align 8, !dbg !1729
  store i8 %140, i8* %14, align 1, !dbg !1729
  %141 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1729
  %142 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1729
  store { i8*, i64 } %139, { i8*, i64 }* %141, align 8, !dbg !1729
  store i8 %140, i8* %142, align 1, !dbg !1729
  ret void, !dbg !1729

if.done:                                          ; preds = %or_return.continue
  %143 = load { i8*, i64 }, { i8*, i64 }* %25, align 8, !dbg !1707
  %144 = load i64, i64* %18, align 8, !dbg !1707
  %145 = load i8*, i8** %20, align 8, !dbg !1707
  call void @runtime.multi_pointer_slice_expr_error(%..string { i8* getelementptr inbounds ([70 x i8], [70 x i8]* @"csbs$84", i64 0, i64 0), i64 69 }, i32 221, i32 28, i64 0, i64 %144), !dbg !1707
  %146 = getelementptr i8, i8* %145, i64 0, !dbg !1707
  %147 = sub i64 %144, 0, !dbg !1707
  %148 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 0, !dbg !1707
  %149 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 1, !dbg !1707
  store i8* %146, i8** %148, align 8, !dbg !1707
  store i64 %147, i64* %149, align 8, !dbg !1707
  %150 = load { i8*, i64 }, { i8*, i64 }* %26, align 8, !dbg !1707
  %151 = call i64 @runtime.copy_slice-10625({ i8*, i64 } %143, { i8*, i64 } %150), !dbg !1707
  %152 = load { i8*, i64 }, { i8*, i64 }* %25, align 8, !dbg !1732
  store { i8*, i64 } %152, { i8*, i64 }* %13, align 8, !dbg !1732
  store i8 0, i8* %14, align 1, !dbg !1732
  %153 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1732
  %154 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1732
  store { i8*, i64 } %152, { i8*, i64 }* %153, align 8, !dbg !1732
  store i8 0, i8* %154, align 1, !dbg !1732
  ret void, !dbg !1732

switch.case.body11:                               ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %27, metadata !1733, metadata !DIExpression()), !dbg !1708
  store i8* %4, i8** %27, align 8, !dbg !1708
  %155 = load i8*, i8** %27, align 8, !dbg !1744
  %156 = icmp ne i8* %155, null, !dbg !1744
  %157 = zext i1 %156 to i8, !dbg !1744
  %158 = icmp ne i8 %157, 0, !dbg !1744
  br i1 %158, label %if.then12, label %if.done13, !dbg !1744

if.then12:                                        ; preds = %switch.case.body11
  %159 = load i8*, i8** %27, align 8, !dbg !1745
  store i8 93, i8* %159, align 1, !dbg !1745
  br label %if.done13, !dbg !1745

if.done13:                                        ; preds = %if.then12, %switch.case.body11
  br label %switch.done15, !dbg !1745

switch.case.body14:                               ; preds = %entry
  store i8 4, i8* %14, align 1, !dbg !1748
  br label %switch.done15, !dbg !1748

switch.done15:                                    ; preds = %switch.case.body14, %if.done13, %switch.case.body2, %switch.case.body1, %entry
  %160 = load { i8*, i64 }, { i8*, i64 }* %13, align 8, !dbg !1749
  %161 = load i8, i8* %14, align 1, !dbg !1749
  store { i8*, i64 } %160, { i8*, i64 }* %13, align 8, !dbg !1749
  store i8 %161, i8* %14, align 1, !dbg !1749
  %162 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !1749
  %163 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !1749
  store { i8*, i64 } %160, { i8*, i64 }* %162, align 8, !dbg !1749
  store i8 %161, i8* %163, align 1, !dbg !1749
  ret void, !dbg !1749
}

; Function Attrs: noreturn
define internal void @runtime.bounds_trap() #5 !dbg !1750 {
decls:
  br label %entry, !dbg !1753

entry:                                            ; preds = %decls
  call void @llvm.trap(), !dbg !1754
  unreachable, !dbg !1754
}

define internal { i64, i64 } @runtime._os_write({ i8*, i64 } %0) !dbg !1756 {
decls:
  %1 = alloca { i8*, i64 }, align 8
  call void @llvm.dbg.value(metadata { i8*, i64 } %0, metadata !1766, metadata !DIExpression()), !dbg !1767
  %2 = alloca %runtime.Context, align 8, !dbg !1768
  %3 = alloca %runtime.Context, align 8, !dbg !1768
  %4 = alloca i64, align 8, !dbg !1770
  %5 = alloca i64, align 8, !dbg !1770
  %6 = alloca { i64, i64 }, align 8, !dbg !1771
  br label %entry, !dbg !1772

entry:                                            ; preds = %decls
  store { i8*, i64 } %0, { i8*, i64 }* %1, align 8
  %7 = bitcast %runtime.Context* %2 to i8*, !dbg !1768
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 96, i1 false), !dbg !1768
  call void @runtime.__init_context-862(%runtime.Context* %2), !dbg !1768
  call void @llvm.dbg.declare(metadata %runtime.Context* %2, metadata !1773, metadata !DIExpression()), !dbg !1768
  %8 = bitcast %runtime.Context* %3 to i8*, !dbg !1768
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 96, i1 false), !dbg !1768
  call void @runtime.default_context(%runtime.Context* sret %3), !dbg !1768
  %9 = load %runtime.Context, %runtime.Context* %3, align 8, !dbg !1768
  %10 = bitcast %runtime.Context* %2 to i8*, !dbg !1768
  %11 = bitcast %runtime.Context* %3 to i8*, !dbg !1768
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 96, i1 false), !dbg !1768
  %12 = load i32, i32* @os.stderr, align 4, !dbg !1770
  %13 = bitcast %runtime.Context* %2 to i8*, !dbg !1770
  %14 = call { i64, i64 } @os.write(i32 %12, { i8*, i64 } %0, i8* %13), !dbg !1770
  %15 = extractvalue { i64, i64 } %14, 0, !dbg !1770
  %16 = extractvalue { i64, i64 } %14, 1, !dbg !1770
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1774, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1775, metadata !DIExpression()), !dbg !1776
  store i64 %15, i64* %4, align 8, !dbg !1770
  store i64 %16, i64* %5, align 8, !dbg !1770
  %17 = load i64, i64* %4, align 8, !dbg !1771
  %18 = load i64, i64* %5, align 8, !dbg !1771
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0, !dbg !1771
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1, !dbg !1771
  store i64 %17, i64* %19, align 8, !dbg !1771
  store i64 %18, i64* %20, align 8, !dbg !1771
  %21 = load { i64, i64 }, { i64, i64 }* %6, align 8, !dbg !1771
  ret { i64, i64 } %21, !dbg !1771
}

; Function Attrs: noreturn
define internal void @runtime.slice_handle_error(%..string %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #5 !dbg !1777 {
decls:
  %6 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !1780, metadata !DIExpression()), !dbg !1781
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1782, metadata !DIExpression()), !dbg !1783
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1784, metadata !DIExpression()), !dbg !1785
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1786, metadata !DIExpression()), !dbg !1787
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %4, metadata !1788, metadata !DIExpression()), !dbg !1789
  %11 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %5, metadata !1790, metadata !DIExpression()), !dbg !1791
  %12 = alloca %runtime.Source_Code_Location, align 8, !dbg !1792
  br label %entry, !dbg !1794

entry:                                            ; preds = %decls
  store %..string %0, %..string* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 %5, i64* %11, align 8
  %13 = bitcast %runtime.Source_Code_Location* %12 to i8*, !dbg !1792
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 40, i1 false), !dbg !1792
  %14 = bitcast %runtime.Source_Code_Location* %12 to i8*, !dbg !1792
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 40, i1 false), !dbg !1792
  %15 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %12, i32 0, i32 0, !dbg !1792
  store %..string %0, %..string* %15, align 8, !dbg !1792
  %16 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %12, i32 0, i32 1, !dbg !1792
  store i32 %1, i32* %16, align 4, !dbg !1792
  %17 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %12, i32 0, i32 2, !dbg !1792
  store i32 %2, i32* %17, align 4, !dbg !1792
  %18 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %12, align 8, !dbg !1792
  call void @runtime.print_caller_location(%runtime.Source_Code_Location* byval %12), !dbg !1792
  %19 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"csbs$87", i64 0, i64 0), i64 23 }), !dbg !1795
  call void @runtime.print_i64(i64 %3), !dbg !1796
  %20 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"csbs$88", i64 0, i64 0), i64 1 }), !dbg !1797
  call void @runtime.print_i64(i64 %4), !dbg !1798
  %21 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"csbs$89", i64 0, i64 0), i64 21 }), !dbg !1799
  call void @runtime.print_i64(i64 %5), !dbg !1800
  %22 = call i64 @runtime.print_byte(i8 10), !dbg !1801
  call void @runtime.bounds_trap(), !dbg !1802
  unreachable, !dbg !1802
}

; Function Attrs: noreturn
define internal void @runtime.multi_pointer_slice_handle_error(%..string %0, i32 %1, i32 %2, i64 %3, i64 %4) #5 !dbg !1803 {
decls:
  %5 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !1806, metadata !DIExpression()), !dbg !1807
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1808, metadata !DIExpression()), !dbg !1809
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1810, metadata !DIExpression()), !dbg !1811
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1812, metadata !DIExpression()), !dbg !1813
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %4, metadata !1814, metadata !DIExpression()), !dbg !1815
  %10 = alloca %runtime.Source_Code_Location, align 8, !dbg !1816
  br label %entry, !dbg !1818

entry:                                            ; preds = %decls
  store %..string %0, %..string* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 %4, i64* %9, align 8
  %11 = bitcast %runtime.Source_Code_Location* %10 to i8*, !dbg !1816
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 40, i1 false), !dbg !1816
  %12 = bitcast %runtime.Source_Code_Location* %10 to i8*, !dbg !1816
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 40, i1 false), !dbg !1816
  %13 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %10, i32 0, i32 0, !dbg !1816
  store %..string %0, %..string* %13, align 8, !dbg !1816
  %14 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %10, i32 0, i32 1, !dbg !1816
  store i32 %1, i32* %14, align 4, !dbg !1816
  %15 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %10, i32 0, i32 2, !dbg !1816
  store i32 %2, i32* %15, align 4, !dbg !1816
  %16 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %10, align 8, !dbg !1816
  call void @runtime.print_caller_location(%runtime.Source_Code_Location* byval %10), !dbg !1816
  %17 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"csbs$87", i64 0, i64 0), i64 23 }), !dbg !1819
  call void @runtime.print_i64(i64 %3), !dbg !1820
  %18 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"csbs$88", i64 0, i64 0), i64 1 }), !dbg !1821
  call void @runtime.print_i64(i64 %4), !dbg !1822
  %19 = call i64 @runtime.print_byte(i8 10), !dbg !1823
  call void @runtime.bounds_trap(), !dbg !1824
  unreachable, !dbg !1824
}

define internal i64 @runtime.print_string(%..string %0) !dbg !1825 {
decls:
  %1 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !1828, metadata !DIExpression()), !dbg !1829
  %2 = alloca i64, align 8
  %3 = alloca %..string, align 8, !dbg !1830
  br label %entry, !dbg !1832

entry:                                            ; preds = %decls
  store %..string %0, %..string* %1, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1833, metadata !DIExpression()), !dbg !1834
  store i64 0, i64* %2, align 8
  store %..string %0, %..string* %3, align 8, !dbg !1830
  %4 = bitcast %..string* %3 to { i8*, i64 }*, !dbg !1830
  %5 = load { i8*, i64 }, { i8*, i64 }* %4, align 8, !dbg !1830
  %6 = call { i64, i64 } @runtime.os_write({ i8*, i64 } %5), !dbg !1830
  %7 = extractvalue { i64, i64 } %6, 0, !dbg !1830
  %8 = extractvalue { i64, i64 } %6, 1, !dbg !1830
  store i64 %7, i64* %2, align 8, !dbg !1830
  %9 = load i64, i64* %2, align 8, !dbg !1835
  store i64 %9, i64* %2, align 8, !dbg !1835
  ret i64 %9, !dbg !1835
}

define internal void @runtime.multi_pointer_slice_expr_error(%..string %0, i32 %1, i32 %2, i64 %3, i64 %4) !dbg !1836 {
decls:
  %5 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !1838, metadata !DIExpression()), !dbg !1839
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1840, metadata !DIExpression()), !dbg !1841
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1842, metadata !DIExpression()), !dbg !1843
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1844, metadata !DIExpression()), !dbg !1845
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %4, metadata !1846, metadata !DIExpression()), !dbg !1847
  br label %entry, !dbg !1848

entry:                                            ; preds = %decls
  store %..string %0, %..string* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 %4, i64* %9, align 8
  %10 = icmp sle i64 %3, %4, !dbg !1849
  %11 = zext i1 %10 to i8, !dbg !1849
  %12 = icmp ne i8 %11, 0, !dbg !1849
  br i1 %12, label %if.then, label %if.done, !dbg !1849

if.then:                                          ; preds = %entry
  ret void, !dbg !1851

if.done:                                          ; preds = %entry
  call void @runtime.multi_pointer_slice_handle_error(%..string %0, i32 %1, i32 %2, i64 %3, i64 %4), !dbg !1854
  unreachable, !dbg !1854
}

define internal void @runtime.slice_expr_error_hi(%..string %0, i32 %1, i32 %2, i64 %3, i64 %4) !dbg !1855 {
decls:
  %5 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !1856, metadata !DIExpression()), !dbg !1857
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1858, metadata !DIExpression()), !dbg !1859
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1860, metadata !DIExpression()), !dbg !1861
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1862, metadata !DIExpression()), !dbg !1863
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %4, metadata !1864, metadata !DIExpression()), !dbg !1865
  br label %entry, !dbg !1866

entry:                                            ; preds = %decls
  store %..string %0, %..string* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 %4, i64* %9, align 8
  %10 = icmp sle i64 0, %3, !dbg !1867
  %11 = zext i1 %10 to i8, !dbg !1867
  %12 = icmp ne i8 %11, 0, !dbg !1867
  br i1 %12, label %cmp.and, label %if.done, !dbg !1867

cmp.and:                                          ; preds = %entry
  %13 = icmp sle i64 %3, %4, !dbg !1867
  %14 = zext i1 %13 to i8, !dbg !1867
  %15 = icmp ne i8 %14, 0, !dbg !1867
  br i1 %15, label %if.then, label %if.done, !dbg !1867

if.then:                                          ; preds = %cmp.and
  ret void, !dbg !1869

if.done:                                          ; preds = %cmp.and, %entry
  call void @runtime.slice_handle_error(%..string %0, i32 %1, i32 %2, i64 0, i64 %3, i64 %4), !dbg !1872
  unreachable, !dbg !1872
}

define internal void @runtime.slice_expr_error_lo_hi(%..string %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) !dbg !1873 {
decls:
  %6 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !1875, metadata !DIExpression()), !dbg !1876
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1877, metadata !DIExpression()), !dbg !1878
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1879, metadata !DIExpression()), !dbg !1880
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1881, metadata !DIExpression()), !dbg !1882
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %4, metadata !1883, metadata !DIExpression()), !dbg !1884
  %11 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %5, metadata !1885, metadata !DIExpression()), !dbg !1886
  br label %entry, !dbg !1887

entry:                                            ; preds = %decls
  store %..string %0, %..string* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 %5, i64* %11, align 8
  %12 = icmp sle i64 0, %3, !dbg !1888
  %13 = zext i1 %12 to i8, !dbg !1888
  %14 = icmp ne i8 %13, 0, !dbg !1888
  br i1 %14, label %cmp.and, label %if.done, !dbg !1888

cmp.and:                                          ; preds = %entry
  %15 = icmp sle i64 %3, %5, !dbg !1888
  %16 = zext i1 %15 to i8, !dbg !1888
  %17 = icmp ne i8 %16, 0, !dbg !1888
  br i1 %17, label %cmp.and1, label %if.done, !dbg !1888

cmp.and1:                                         ; preds = %cmp.and
  %18 = icmp sle i64 %3, %4, !dbg !1888
  %19 = zext i1 %18 to i8, !dbg !1888
  %20 = icmp ne i8 %19, 0, !dbg !1888
  br i1 %20, label %cmp.and2, label %if.done, !dbg !1888

cmp.and2:                                         ; preds = %cmp.and1
  %21 = icmp sle i64 %4, %5, !dbg !1888
  %22 = zext i1 %21 to i8, !dbg !1888
  %23 = icmp ne i8 %22, 0, !dbg !1888
  br i1 %23, label %if.then, label %if.done, !dbg !1888

if.then:                                          ; preds = %cmp.and2
  ret void, !dbg !1890

if.done:                                          ; preds = %cmp.and2, %cmp.and1, %cmp.and, %entry
  call void @runtime.slice_handle_error(%..string %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5), !dbg !1893
  unreachable, !dbg !1893
}

; Function Attrs: alwaysinline
define internal void @runtime.make_slice_error_loc(%runtime.Source_Code_Location* byval align 8 %0, i64 %1) #4 !dbg !1894 {
decls:
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %0, metadata !1897, metadata !DIExpression()), !dbg !1898
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !1899, metadata !DIExpression()), !dbg !1900
  br label %entry, !dbg !1901

entry:                                            ; preds = %decls
  store i64 %1, i64* %2, align 8
  %3 = icmp sle i64 0, %1, !dbg !1902
  %4 = zext i1 %3 to i8, !dbg !1902
  %5 = icmp ne i8 %4, 0, !dbg !1902
  br i1 %5, label %if.then, label %if.done, !dbg !1902

if.then:                                          ; preds = %entry
  ret void, !dbg !1904

if.done:                                          ; preds = %entry
  %6 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %0, align 8, !dbg !1907
  call void @runtime.make_slice_error_loc.handle_error-0(%runtime.Source_Code_Location* byval %0, i64 %1) #4, !dbg !1907
  ret void, !dbg !1908
}

define internal i128 @runtime.udivmod128(i128 %0, i128 %1, i128* %2) !dbg !1909 {
decls:
  %3 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !1916, metadata !DIExpression()), !dbg !1917
  %4 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %1, metadata !1918, metadata !DIExpression()), !dbg !1919
  %5 = alloca i128*, align 8
  call void @llvm.dbg.value(metadata i128* %2, metadata !1920, metadata !DIExpression()), !dbg !1921
  %6 = alloca i128, align 8, !dbg !1922
  %7 = alloca [2 x i64], align 8, !dbg !1922
  %8 = alloca i128, align 8, !dbg !1924
  %9 = alloca [2 x i64], align 8, !dbg !1924
  %10 = alloca [2 x i64], align 8, !dbg !1925
  %11 = alloca [2 x i64], align 8, !dbg !1925
  %12 = alloca i32, align 4, !dbg !1926
  %13 = alloca i64, align 8, !dbg !1927
  %14 = alloca i32, align 4, !dbg !1934
  %15 = alloca i128, align 8, !dbg !1935
  %16 = alloca i128, align 8, !dbg !1936
  %17 = alloca i128, align 8, !dbg !1939
  br label %entry, !dbg !1940

entry:                                            ; preds = %decls
  store i128 %0, i128* %3, align 8
  store i128 %1, i128* %4, align 8
  store i128* %2, i128** %5, align 8
  store i128 %0, i128* %6, align 8, !dbg !1922
  %18 = bitcast i128* %6 to [2 x i64]*, !dbg !1922
  %19 = load [2 x i64], [2 x i64]* %18, align 8, !dbg !1922
  call void @llvm.dbg.declare(metadata [2 x i64]* %7, metadata !1941, metadata !DIExpression()), !dbg !1922
  store [2 x i64] %19, [2 x i64]* %7, align 8, !dbg !1922
  store i128 %1, i128* %8, align 8, !dbg !1924
  %20 = bitcast i128* %8 to [2 x i64]*, !dbg !1924
  %21 = load [2 x i64], [2 x i64]* %20, align 8, !dbg !1924
  call void @llvm.dbg.declare(metadata [2 x i64]* %9, metadata !1945, metadata !DIExpression()), !dbg !1924
  store [2 x i64] %21, [2 x i64]* %9, align 8, !dbg !1924
  call void @llvm.dbg.declare(metadata [2 x i64]* %10, metadata !1946, metadata !DIExpression()), !dbg !1925
  %22 = bitcast [2 x i64]* %10 to i8*, !dbg !1925
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 16, i1 false), !dbg !1925
  call void @llvm.dbg.declare(metadata [2 x i64]* %11, metadata !1947, metadata !DIExpression()), !dbg !1948
  %23 = bitcast [2 x i64]* %11 to i8*, !dbg !1925
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 16, i1 false), !dbg !1925
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1949, metadata !DIExpression()), !dbg !1926
  store i32 0, i32* %12, align 4, !dbg !1926
  %24 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1950
  %25 = load i64, i64* %24, align 8, !dbg !1950
  %26 = icmp eq i64 %25, 0, !dbg !1950
  %27 = zext i1 %26 to i8, !dbg !1950
  %28 = icmp ne i8 %27, 0, !dbg !1950
  br i1 %28, label %if.then, label %if.done6, !dbg !1950

if.then:                                          ; preds = %entry
  %29 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1951
  %30 = load i64, i64* %29, align 8, !dbg !1951
  %31 = icmp eq i64 %30, 0, !dbg !1951
  %32 = zext i1 %31 to i8, !dbg !1951
  %33 = icmp ne i8 %32, 0, !dbg !1951
  br i1 %33, label %if.then1, label %if.done3, !dbg !1951

if.then1:                                         ; preds = %if.then
  %34 = icmp ne i128* %2, null, !dbg !1952
  %35 = zext i1 %34 to i8, !dbg !1952
  %36 = icmp ne i8 %35, 0, !dbg !1952
  br i1 %36, label %if.then2, label %if.done, !dbg !1952

if.then2:                                         ; preds = %if.then1
  %37 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !1927
  %38 = load i64, i64* %37, align 8, !dbg !1927
  %39 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !1927
  %40 = load i64, i64* %39, align 8, !dbg !1927
  %41 = urem i64 %38, %40, !dbg !1927
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1953, metadata !DIExpression()), !dbg !1927
  store i64 %41, i64* %13, align 8, !dbg !1927
  %42 = load i64, i64* %13, align 8, !dbg !1954
  %43 = zext i64 %42 to i128, !dbg !1954
  store i128 %43, i128* %2, align 8, !dbg !1954
  br label %if.done, !dbg !1954

if.done:                                          ; preds = %if.then2, %if.then1
  %44 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !1955
  %45 = load i64, i64* %44, align 8, !dbg !1955
  %46 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !1955
  %47 = load i64, i64* %46, align 8, !dbg !1955
  %48 = udiv i64 %45, %47, !dbg !1955
  %49 = zext i64 %48 to i128, !dbg !1955
  ret i128 %49, !dbg !1955

if.done3:                                         ; preds = %if.then
  %50 = icmp ne i128* %2, null, !dbg !1956
  %51 = zext i1 %50 to i8, !dbg !1956
  %52 = icmp ne i8 %51, 0, !dbg !1956
  br i1 %52, label %if.then4, label %if.done5, !dbg !1956

if.then4:                                         ; preds = %if.done3
  %53 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !1957
  %54 = load i64, i64* %53, align 8, !dbg !1957
  %55 = zext i64 %54 to i128, !dbg !1957
  store i128 %55, i128* %2, align 8, !dbg !1957
  br label %if.done5, !dbg !1957

if.done5:                                         ; preds = %if.then4, %if.done3
  ret i128 0, !dbg !1960

if.done6:                                         ; preds = %entry
  %56 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !1961
  %57 = load i64, i64* %56, align 8, !dbg !1961
  %58 = icmp eq i64 %57, 0, !dbg !1961
  %59 = zext i1 %58 to i8, !dbg !1961
  %60 = icmp ne i8 %59, 0, !dbg !1961
  br i1 %60, label %if.then7, label %if.else, !dbg !1961

if.then7:                                         ; preds = %if.done6
  %61 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1962
  %62 = load i64, i64* %61, align 8, !dbg !1962
  %63 = icmp eq i64 %62, 0, !dbg !1962
  %64 = zext i1 %63 to i8, !dbg !1962
  %65 = icmp ne i8 %64, 0, !dbg !1962
  br i1 %65, label %if.then8, label %if.done11, !dbg !1962

if.then8:                                         ; preds = %if.then7
  %66 = icmp ne i128* %2, null, !dbg !1965
  %67 = zext i1 %66 to i8, !dbg !1965
  %68 = icmp ne i8 %67, 0, !dbg !1965
  br i1 %68, label %if.then9, label %if.done10, !dbg !1965

if.then9:                                         ; preds = %if.then8
  %69 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1968
  %70 = load i64, i64* %69, align 8, !dbg !1968
  %71 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !1968
  %72 = load i64, i64* %71, align 8, !dbg !1968
  %73 = urem i64 %70, %72, !dbg !1968
  %74 = zext i64 %73 to i128, !dbg !1968
  store i128 %74, i128* %2, align 8, !dbg !1968
  br label %if.done10, !dbg !1968

if.done10:                                        ; preds = %if.then9, %if.then8
  %75 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1971
  %76 = load i64, i64* %75, align 8, !dbg !1971
  %77 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !1971
  %78 = load i64, i64* %77, align 8, !dbg !1971
  %79 = udiv i64 %76, %78, !dbg !1971
  %80 = zext i64 %79 to i128, !dbg !1971
  ret i128 %80, !dbg !1971

if.done11:                                        ; preds = %if.then7
  %81 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !1972
  %82 = load i64, i64* %81, align 8, !dbg !1972
  %83 = icmp eq i64 %82, 0, !dbg !1972
  %84 = zext i1 %83 to i8, !dbg !1972
  %85 = icmp ne i8 %84, 0, !dbg !1972
  br i1 %85, label %if.then12, label %if.done15, !dbg !1972

if.then12:                                        ; preds = %if.done11
  %86 = icmp ne i128* %2, null, !dbg !1973
  %87 = zext i1 %86 to i8, !dbg !1973
  %88 = icmp ne i8 %87, 0, !dbg !1973
  br i1 %88, label %if.then13, label %if.done14, !dbg !1973

if.then13:                                        ; preds = %if.then12
  %89 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !1976
  %90 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1976
  %91 = load i64, i64* %90, align 8, !dbg !1976
  %92 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1976
  %93 = load i64, i64* %92, align 8, !dbg !1976
  %94 = urem i64 %91, %93, !dbg !1976
  store i64 %94, i64* %89, align 8, !dbg !1976
  %95 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !1979
  store i64 0, i64* %95, align 8, !dbg !1979
  %96 = load [2 x i64], [2 x i64]* %11, align 8, !dbg !1980
  %97 = bitcast [2 x i64]* %11 to i128*, !dbg !1980
  %98 = load i128, i128* %97, align 8, !dbg !1980
  store i128 %98, i128* %2, align 8, !dbg !1980
  br label %if.done14, !dbg !1980

if.done14:                                        ; preds = %if.then13, %if.then12
  %99 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1981
  %100 = load i64, i64* %99, align 8, !dbg !1981
  %101 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1981
  %102 = load i64, i64* %101, align 8, !dbg !1981
  %103 = udiv i64 %100, %102, !dbg !1981
  %104 = zext i64 %103 to i128, !dbg !1981
  ret i128 %104, !dbg !1981

if.done15:                                        ; preds = %if.done11
  %105 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1982
  %106 = load i64, i64* %105, align 8, !dbg !1982
  %107 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1982
  %108 = load i64, i64* %107, align 8, !dbg !1982
  %109 = sub i64 %108, 1, !dbg !1982
  %110 = and i64 %106, %109, !dbg !1982
  %111 = icmp eq i64 %110, 0, !dbg !1982
  %112 = zext i1 %111 to i8, !dbg !1982
  %113 = icmp ne i8 %112, 0, !dbg !1982
  br i1 %113, label %if.then16, label %if.done19, !dbg !1982

if.then16:                                        ; preds = %if.done15
  %114 = icmp ne i128* %2, null, !dbg !1983
  %115 = zext i1 %114 to i8, !dbg !1983
  %116 = icmp ne i8 %115, 0, !dbg !1983
  br i1 %116, label %if.then17, label %if.done18, !dbg !1983

if.then17:                                        ; preds = %if.then16
  %117 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !1986
  %118 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !1986
  %119 = load i64, i64* %118, align 8, !dbg !1986
  store i64 %119, i64* %117, align 8, !dbg !1986
  %120 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !1989
  %121 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1989
  %122 = load i64, i64* %121, align 8, !dbg !1989
  %123 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1989
  %124 = load i64, i64* %123, align 8, !dbg !1989
  %125 = sub i64 %124, 1, !dbg !1989
  %126 = and i64 %122, %125, !dbg !1989
  store i64 %126, i64* %120, align 8, !dbg !1989
  %127 = load [2 x i64], [2 x i64]* %11, align 8, !dbg !1990
  %128 = bitcast [2 x i64]* %11 to i128*, !dbg !1990
  %129 = load i128, i128* %128, align 8, !dbg !1990
  store i128 %129, i128* %2, align 8, !dbg !1990
  br label %if.done18, !dbg !1990

if.done18:                                        ; preds = %if.then17, %if.then16
  %130 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1991
  %131 = load i64, i64* %130, align 8, !dbg !1991
  %132 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1991
  %133 = load i64, i64* %132, align 8, !dbg !1991
  %134 = call i64 @llvm.cttz.i64(i64 %133, i1 false), !dbg !1991
  %135 = icmp ult i64 %134, 64, !dbg !1991
  %136 = lshr i64 %131, %134, !dbg !1991
  %137 = select i1 %135, i64 %136, i64 0, !dbg !1991
  %138 = zext i64 %137 to i128, !dbg !1991
  ret i128 %138, !dbg !1991

if.done19:                                        ; preds = %if.done15
  %139 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !1992
  %140 = load i64, i64* %139, align 8, !dbg !1992
  %141 = call i64 @llvm.ctlz.i64(i64 %140, i1 false), !dbg !1992
  %142 = trunc i64 %141 to i32, !dbg !1992
  %143 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !1992
  %144 = load i64, i64* %143, align 8, !dbg !1992
  %145 = call i64 @llvm.ctlz.i64(i64 %144, i1 false), !dbg !1992
  %146 = trunc i64 %145 to i32, !dbg !1992
  %147 = sub i32 %142, %146, !dbg !1992
  store i32 %147, i32* %12, align 4, !dbg !1992
  %148 = load i32, i32* %12, align 4, !dbg !1993
  %149 = icmp ugt i32 %148, 62, !dbg !1993
  %150 = zext i1 %149 to i8, !dbg !1993
  %151 = icmp ne i8 %150, 0, !dbg !1993
  br i1 %151, label %if.then20, label %if.done23, !dbg !1993

if.then20:                                        ; preds = %if.done19
  %152 = icmp ne i128* %2, null, !dbg !1994
  %153 = zext i1 %152 to i8, !dbg !1994
  %154 = icmp ne i8 %153, 0, !dbg !1994
  br i1 %154, label %if.then21, label %if.done22, !dbg !1994

if.then21:                                        ; preds = %if.then20
  store i128 %0, i128* %2, align 8, !dbg !1997
  br label %if.done22, !dbg !1997

if.done22:                                        ; preds = %if.then21, %if.then20
  ret i128 0, !dbg !2000

if.done23:                                        ; preds = %if.done19
  %155 = load i32, i32* %12, align 4, !dbg !2001
  %156 = add i32 %155, 1, !dbg !2001
  store i32 %156, i32* %12, align 4, !dbg !2001
  %157 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2002
  store i64 0, i64* %157, align 8, !dbg !2002
  %158 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2003
  %159 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2003
  %160 = load i64, i64* %159, align 8, !dbg !2003
  %161 = load i32, i32* %12, align 4, !dbg !2003
  %162 = sub i32 64, %161, !dbg !2003
  %163 = zext i32 %162 to i64, !dbg !2003
  %164 = icmp ult i64 %163, 64, !dbg !2003
  %165 = shl i64 %160, %163, !dbg !2003
  %166 = select i1 %164, i64 %165, i64 0, !dbg !2003
  store i64 %166, i64* %158, align 8, !dbg !2003
  %167 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2004
  %168 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2004
  %169 = load i64, i64* %168, align 8, !dbg !2004
  %170 = load i32, i32* %12, align 4, !dbg !2004
  %171 = zext i32 %170 to i64, !dbg !2004
  %172 = icmp ult i64 %171, 64, !dbg !2004
  %173 = lshr i64 %169, %171, !dbg !2004
  %174 = select i1 %172, i64 %173, i64 0, !dbg !2004
  store i64 %174, i64* %167, align 8, !dbg !2004
  %175 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2005
  %176 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2005
  %177 = load i64, i64* %176, align 8, !dbg !2005
  %178 = load i32, i32* %12, align 4, !dbg !2005
  %179 = sub i32 64, %178, !dbg !2005
  %180 = zext i32 %179 to i64, !dbg !2005
  %181 = icmp ult i64 %180, 64, !dbg !2005
  %182 = shl i64 %177, %180, !dbg !2005
  %183 = select i1 %181, i64 %182, i64 0, !dbg !2005
  %184 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2005
  %185 = load i64, i64* %184, align 8, !dbg !2005
  %186 = load i32, i32* %12, align 4, !dbg !2005
  %187 = zext i32 %186 to i64, !dbg !2005
  %188 = icmp ult i64 %187, 64, !dbg !2005
  %189 = lshr i64 %185, %187, !dbg !2005
  %190 = select i1 %188, i64 %189, i64 0, !dbg !2005
  %191 = or i64 %183, %190, !dbg !2005
  store i64 %191, i64* %175, align 8, !dbg !2005
  br label %if.done42, !dbg !2005

if.else:                                          ; preds = %if.done6
  %192 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !2006
  %193 = load i64, i64* %192, align 8, !dbg !2006
  %194 = icmp eq i64 %193, 0, !dbg !2006
  %195 = zext i1 %194 to i8, !dbg !2006
  %196 = icmp ne i8 %195, 0, !dbg !2006
  br i1 %196, label %if.then24, label %if.else33, !dbg !2006

if.then24:                                        ; preds = %if.else
  %197 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !2008
  %198 = load i64, i64* %197, align 8, !dbg !2008
  %199 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !2008
  %200 = load i64, i64* %199, align 8, !dbg !2008
  %201 = sub i64 %200, 1, !dbg !2008
  %202 = and i64 %198, %201, !dbg !2008
  %203 = icmp eq i64 %202, 0, !dbg !2008
  %204 = zext i1 %203 to i8, !dbg !2008
  %205 = icmp ne i8 %204, 0, !dbg !2008
  br i1 %205, label %if.then25, label %if.done30, !dbg !2008

if.then25:                                        ; preds = %if.then24
  %206 = icmp ne i128* %2, null, !dbg !2011
  %207 = zext i1 %206 to i8, !dbg !2011
  %208 = icmp ne i8 %207, 0, !dbg !2011
  br i1 %208, label %if.then26, label %if.done27, !dbg !2011

if.then26:                                        ; preds = %if.then25
  %209 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2014
  %210 = load i64, i64* %209, align 8, !dbg !2014
  %211 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !2014
  %212 = load i64, i64* %211, align 8, !dbg !2014
  %213 = sub i64 %212, 1, !dbg !2014
  %214 = and i64 %210, %213, !dbg !2014
  %215 = zext i64 %214 to i128, !dbg !2014
  store i128 %215, i128* %2, align 8, !dbg !2014
  br label %if.done27, !dbg !2014

if.done27:                                        ; preds = %if.then26, %if.then25
  %216 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !2017
  %217 = load i64, i64* %216, align 8, !dbg !2017
  %218 = icmp eq i64 %217, 1, !dbg !2017
  %219 = zext i1 %218 to i8, !dbg !2017
  %220 = icmp ne i8 %219, 0, !dbg !2017
  br i1 %220, label %if.then28, label %if.done29, !dbg !2017

if.then28:                                        ; preds = %if.done27
  ret i128 %0, !dbg !2018

if.done29:                                        ; preds = %if.done27
  %221 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !2021
  %222 = load i64, i64* %221, align 8, !dbg !2021
  %223 = call i64 @llvm.cttz.i64(i64 %222, i1 false), !dbg !2021
  %224 = trunc i64 %223 to i32, !dbg !2021
  store i32 %224, i32* %12, align 4, !dbg !2021
  %225 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2022
  %226 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2022
  %227 = load i64, i64* %226, align 8, !dbg !2022
  %228 = load i32, i32* %12, align 4, !dbg !2022
  %229 = zext i32 %228 to i64, !dbg !2022
  %230 = icmp ult i64 %229, 64, !dbg !2022
  %231 = lshr i64 %227, %229, !dbg !2022
  %232 = select i1 %230, i64 %231, i64 0, !dbg !2022
  store i64 %232, i64* %225, align 8, !dbg !2022
  %233 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2023
  %234 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2023
  %235 = load i64, i64* %234, align 8, !dbg !2023
  %236 = load i32, i32* %12, align 4, !dbg !2023
  %237 = sub i32 64, %236, !dbg !2023
  %238 = zext i32 %237 to i64, !dbg !2023
  %239 = icmp ult i64 %238, 64, !dbg !2023
  %240 = shl i64 %235, %238, !dbg !2023
  %241 = select i1 %239, i64 %240, i64 0, !dbg !2023
  %242 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2023
  %243 = load i64, i64* %242, align 8, !dbg !2023
  %244 = load i32, i32* %12, align 4, !dbg !2023
  %245 = zext i32 %244 to i64, !dbg !2023
  %246 = icmp ult i64 %245, 64, !dbg !2023
  %247 = lshr i64 %243, %245, !dbg !2023
  %248 = select i1 %246, i64 %247, i64 0, !dbg !2023
  %249 = or i64 %241, %248, !dbg !2023
  store i64 %249, i64* %233, align 8, !dbg !2023
  %250 = load [2 x i64], [2 x i64]* %10, align 8, !dbg !2024
  %251 = bitcast [2 x i64]* %10 to i128*, !dbg !2024
  %252 = load i128, i128* %251, align 8, !dbg !2024
  ret i128 %252, !dbg !2024

if.done30:                                        ; preds = %if.then24
  %253 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 0, !dbg !2025
  %254 = load i64, i64* %253, align 8, !dbg !2025
  %255 = call i64 @llvm.ctlz.i64(i64 %254, i1 false), !dbg !2025
  %256 = trunc i64 %255 to i32, !dbg !2025
  %257 = add i32 65, %256, !dbg !2025
  %258 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2025
  %259 = load i64, i64* %258, align 8, !dbg !2025
  %260 = call i64 @llvm.ctlz.i64(i64 %259, i1 false), !dbg !2025
  %261 = trunc i64 %260 to i32, !dbg !2025
  %262 = sub i32 %257, %261, !dbg !2025
  store i32 %262, i32* %12, align 4, !dbg !2025
  %263 = load i32, i32* %12, align 4, !dbg !2026
  %264 = icmp eq i32 %263, 64, !dbg !2026
  %265 = zext i1 %264 to i8, !dbg !2026
  %266 = icmp eq i8 1, %265, !dbg !2026
  br i1 %266, label %switch.case.body, label %switch.case.next, !dbg !2026

switch.case.next:                                 ; preds = %if.done30
  %267 = load i32, i32* %12, align 4, !dbg !2027
  %268 = icmp ult i32 %267, 64, !dbg !2027
  %269 = zext i1 %268 to i8, !dbg !2027
  %270 = icmp eq i8 1, %269, !dbg !2027
  br i1 %270, label %switch.case.body32, label %switch.case.next31, !dbg !2027

switch.case.body:                                 ; preds = %if.done30
  %271 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2029
  store i64 0, i64* %271, align 8, !dbg !2029
  %272 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2030
  %273 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2030
  %274 = load i64, i64* %273, align 8, !dbg !2030
  store i64 %274, i64* %272, align 8, !dbg !2030
  %275 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2031
  store i64 0, i64* %275, align 8, !dbg !2031
  %276 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2027
  %277 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2027
  %278 = load i64, i64* %277, align 8, !dbg !2027
  store i64 %278, i64* %276, align 8, !dbg !2027
  br label %switch.done, !dbg !2027

switch.case.next31:                               ; preds = %switch.case.next
  br label %switch.default.body, !dbg !2032

switch.case.body32:                               ; preds = %switch.case.next
  %279 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2033
  store i64 0, i64* %279, align 8, !dbg !2033
  %280 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2034
  %281 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2034
  %282 = load i64, i64* %281, align 8, !dbg !2034
  %283 = load i32, i32* %12, align 4, !dbg !2034
  %284 = sub i32 64, %283, !dbg !2034
  %285 = zext i32 %284 to i64, !dbg !2034
  %286 = icmp ult i64 %285, 64, !dbg !2034
  %287 = shl i64 %282, %285, !dbg !2034
  %288 = select i1 %286, i64 %287, i64 0, !dbg !2034
  store i64 %288, i64* %280, align 8, !dbg !2034
  %289 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2035
  %290 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2035
  %291 = load i64, i64* %290, align 8, !dbg !2035
  %292 = load i32, i32* %12, align 4, !dbg !2035
  %293 = zext i32 %292 to i64, !dbg !2035
  %294 = icmp ult i64 %293, 64, !dbg !2035
  %295 = lshr i64 %291, %293, !dbg !2035
  %296 = select i1 %294, i64 %295, i64 0, !dbg !2035
  store i64 %296, i64* %289, align 8, !dbg !2035
  %297 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2032
  %298 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2032
  %299 = load i64, i64* %298, align 8, !dbg !2032
  %300 = load i32, i32* %12, align 4, !dbg !2032
  %301 = sub i32 64, %300, !dbg !2032
  %302 = zext i32 %301 to i64, !dbg !2032
  %303 = icmp ult i64 %302, 64, !dbg !2032
  %304 = shl i64 %299, %302, !dbg !2032
  %305 = select i1 %303, i64 %304, i64 0, !dbg !2032
  %306 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2032
  %307 = load i64, i64* %306, align 8, !dbg !2032
  %308 = load i32, i32* %12, align 4, !dbg !2032
  %309 = zext i32 %308 to i64, !dbg !2032
  %310 = icmp ult i64 %309, 64, !dbg !2032
  %311 = lshr i64 %307, %309, !dbg !2032
  %312 = select i1 %310, i64 %311, i64 0, !dbg !2032
  %313 = or i64 %305, %312, !dbg !2032
  store i64 %313, i64* %297, align 8, !dbg !2032
  br label %switch.done, !dbg !2032

switch.default.body:                              ; preds = %switch.case.next31
  %314 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2036
  %315 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2036
  %316 = load i64, i64* %315, align 8, !dbg !2036
  %317 = load i32, i32* %12, align 4, !dbg !2036
  %318 = sub i32 128, %317, !dbg !2036
  %319 = zext i32 %318 to i64, !dbg !2036
  %320 = icmp ult i64 %319, 64, !dbg !2036
  %321 = shl i64 %316, %319, !dbg !2036
  %322 = select i1 %320, i64 %321, i64 0, !dbg !2036
  store i64 %322, i64* %314, align 8, !dbg !2036
  %323 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2037
  %324 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2037
  %325 = load i64, i64* %324, align 8, !dbg !2037
  %326 = load i32, i32* %12, align 4, !dbg !2037
  %327 = sub i32 128, %326, !dbg !2037
  %328 = zext i32 %327 to i64, !dbg !2037
  %329 = icmp ult i64 %328, 64, !dbg !2037
  %330 = shl i64 %325, %328, !dbg !2037
  %331 = select i1 %329, i64 %330, i64 0, !dbg !2037
  %332 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2037
  %333 = load i64, i64* %332, align 8, !dbg !2037
  %334 = load i32, i32* %12, align 4, !dbg !2037
  %335 = sub i32 %334, 64, !dbg !2037
  %336 = zext i32 %335 to i64, !dbg !2037
  %337 = icmp ult i64 %336, 64, !dbg !2037
  %338 = lshr i64 %333, %336, !dbg !2037
  %339 = select i1 %337, i64 %338, i64 0, !dbg !2037
  %340 = or i64 %331, %339, !dbg !2037
  store i64 %340, i64* %323, align 8, !dbg !2037
  %341 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2038
  store i64 0, i64* %341, align 8, !dbg !2038
  %342 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2039
  %343 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2039
  %344 = load i64, i64* %343, align 8, !dbg !2039
  %345 = load i32, i32* %12, align 4, !dbg !2039
  %346 = sub i32 %345, 64, !dbg !2039
  %347 = zext i32 %346 to i64, !dbg !2039
  %348 = icmp ult i64 %347, 64, !dbg !2039
  %349 = lshr i64 %344, %347, !dbg !2039
  %350 = select i1 %348, i64 %349, i64 0, !dbg !2039
  store i64 %350, i64* %342, align 8, !dbg !2039
  br label %switch.done, !dbg !2039

switch.done:                                      ; preds = %switch.default.body, %switch.case.body32, %switch.case.body
  br label %if.done41, !dbg !2039

if.else33:                                        ; preds = %if.else
  %351 = getelementptr [2 x i64], [2 x i64]* %9, i64 0, i64 1, !dbg !2040
  %352 = load i64, i64* %351, align 8, !dbg !2040
  %353 = call i64 @llvm.ctlz.i64(i64 %352, i1 false), !dbg !2040
  %354 = trunc i64 %353 to i32, !dbg !2040
  %355 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2040
  %356 = load i64, i64* %355, align 8, !dbg !2040
  %357 = call i64 @llvm.ctlz.i64(i64 %356, i1 false), !dbg !2040
  %358 = trunc i64 %357 to i32, !dbg !2040
  %359 = sub i32 %354, %358, !dbg !2040
  store i32 %359, i32* %12, align 4, !dbg !2040
  %360 = load i32, i32* %12, align 4, !dbg !2042
  %361 = icmp ugt i32 %360, 63, !dbg !2042
  %362 = zext i1 %361 to i8, !dbg !2042
  %363 = icmp ne i8 %362, 0, !dbg !2042
  br i1 %363, label %if.then34, label %if.done37, !dbg !2042

if.then34:                                        ; preds = %if.else33
  %364 = icmp ne i128* %2, null, !dbg !2043
  %365 = zext i1 %364 to i8, !dbg !2043
  %366 = icmp ne i8 %365, 0, !dbg !2043
  br i1 %366, label %if.then35, label %if.done36, !dbg !2043

if.then35:                                        ; preds = %if.then34
  store i128 %0, i128* %2, align 8, !dbg !2046
  br label %if.done36, !dbg !2046

if.done36:                                        ; preds = %if.then35, %if.then34
  ret i128 0, !dbg !2049

if.done37:                                        ; preds = %if.else33
  %367 = load i32, i32* %12, align 4, !dbg !2050
  %368 = add i32 %367, 1, !dbg !2050
  store i32 %368, i32* %12, align 4, !dbg !2050
  %369 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2051
  store i64 0, i64* %369, align 8, !dbg !2051
  %370 = load i32, i32* %12, align 4, !dbg !2052
  %371 = icmp eq i32 %370, 64, !dbg !2052
  %372 = zext i1 %371 to i8, !dbg !2052
  %373 = icmp ne i8 %372, 0, !dbg !2052
  br i1 %373, label %if.then38, label %if.else39, !dbg !2052

if.then38:                                        ; preds = %if.done37
  %374 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2053
  %375 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2053
  %376 = load i64, i64* %375, align 8, !dbg !2053
  store i64 %376, i64* %374, align 8, !dbg !2053
  %377 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2056
  store i64 0, i64* %377, align 8, !dbg !2056
  %378 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2057
  %379 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2057
  %380 = load i64, i64* %379, align 8, !dbg !2057
  store i64 %380, i64* %378, align 8, !dbg !2057
  br label %if.done40, !dbg !2057

if.else39:                                        ; preds = %if.done37
  %381 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2058
  %382 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2058
  %383 = load i64, i64* %382, align 8, !dbg !2058
  %384 = load i32, i32* %12, align 4, !dbg !2058
  %385 = zext i32 %384 to i64, !dbg !2058
  %386 = icmp ult i64 %385, 64, !dbg !2058
  %387 = lshr i64 %383, %385, !dbg !2058
  %388 = select i1 %386, i64 %387, i64 0, !dbg !2058
  store i64 %388, i64* %381, align 8, !dbg !2058
  %389 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2060
  %390 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2060
  %391 = load i64, i64* %390, align 8, !dbg !2060
  %392 = load i32, i32* %12, align 4, !dbg !2060
  %393 = sub i32 64, %392, !dbg !2060
  %394 = zext i32 %393 to i64, !dbg !2060
  %395 = icmp ult i64 %394, 64, !dbg !2060
  %396 = shl i64 %391, %394, !dbg !2060
  %397 = select i1 %395, i64 %396, i64 0, !dbg !2060
  %398 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2060
  %399 = load i64, i64* %398, align 8, !dbg !2060
  %400 = load i32, i32* %12, align 4, !dbg !2060
  %401 = zext i32 %400 to i64, !dbg !2060
  %402 = icmp ult i64 %401, 64, !dbg !2060
  %403 = lshr i64 %399, %401, !dbg !2060
  %404 = select i1 %402, i64 %403, i64 0, !dbg !2060
  %405 = or i64 %397, %404, !dbg !2060
  store i64 %405, i64* %389, align 8, !dbg !2060
  %406 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2061
  %407 = getelementptr [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2061
  %408 = load i64, i64* %407, align 8, !dbg !2061
  %409 = load i32, i32* %12, align 4, !dbg !2061
  %410 = sub i32 64, %409, !dbg !2061
  %411 = zext i32 %410 to i64, !dbg !2061
  %412 = icmp ult i64 %411, 64, !dbg !2061
  %413 = shl i64 %408, %411, !dbg !2061
  %414 = select i1 %412, i64 %413, i64 0, !dbg !2061
  store i64 %414, i64* %406, align 8, !dbg !2061
  br label %if.done40, !dbg !2061

if.done40:                                        ; preds = %if.else39, %if.then38
  br label %if.done41, !dbg !2061

if.done41:                                        ; preds = %if.done40, %switch.done
  br label %if.done42, !dbg !2061

if.done42:                                        ; preds = %if.done41, %if.done23
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2062, metadata !DIExpression()), !dbg !1934
  store i32 0, i32* %14, align 4, !dbg !1934
  call void @llvm.dbg.declare(metadata i128* %15, metadata !2063, metadata !DIExpression()), !dbg !1935
  store i128 0, i128* %15, align 8, !dbg !1935
  br label %for.loop, !dbg !2064

for.loop:                                         ; preds = %for.post, %if.done42
  %415 = load i32, i32* %12, align 4, !dbg !2065
  %416 = icmp ugt i32 %415, 0, !dbg !2065
  %417 = zext i1 %416 to i8, !dbg !2065
  %418 = icmp ne i8 %417, 0, !dbg !2065
  br i1 %418, label %for.body, label %for.done, !dbg !2065

for.body:                                         ; preds = %for.loop
  %419 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2066
  %420 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 1, !dbg !2066
  %421 = load i64, i64* %420, align 8, !dbg !2066
  %422 = shl i64 %421, 1, !dbg !2066
  %423 = select i1 true, i64 %422, i64 0, !dbg !2066
  %424 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2066
  %425 = load i64, i64* %424, align 8, !dbg !2066
  %426 = lshr i64 %425, 63, !dbg !2066
  %427 = select i1 true, i64 %426, i64 0, !dbg !2066
  %428 = or i64 %423, %427, !dbg !2066
  store i64 %428, i64* %419, align 8, !dbg !2066
  %429 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2067
  %430 = getelementptr [2 x i64], [2 x i64]* %11, i64 0, i64 0, !dbg !2067
  %431 = load i64, i64* %430, align 8, !dbg !2067
  %432 = shl i64 %431, 1, !dbg !2067
  %433 = select i1 true, i64 %432, i64 0, !dbg !2067
  %434 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2067
  %435 = load i64, i64* %434, align 8, !dbg !2067
  %436 = lshr i64 %435, 63, !dbg !2067
  %437 = select i1 true, i64 %436, i64 0, !dbg !2067
  %438 = or i64 %433, %437, !dbg !2067
  store i64 %438, i64* %429, align 8, !dbg !2067
  %439 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2068
  %440 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !2068
  %441 = load i64, i64* %440, align 8, !dbg !2068
  %442 = shl i64 %441, 1, !dbg !2068
  %443 = select i1 true, i64 %442, i64 0, !dbg !2068
  %444 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2068
  %445 = load i64, i64* %444, align 8, !dbg !2068
  %446 = lshr i64 %445, 63, !dbg !2068
  %447 = select i1 true, i64 %446, i64 0, !dbg !2068
  %448 = or i64 %443, %447, !dbg !2068
  store i64 %448, i64* %439, align 8, !dbg !2068
  %449 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2069
  %450 = getelementptr [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !2069
  %451 = load i64, i64* %450, align 8, !dbg !2069
  %452 = shl i64 %451, 1, !dbg !2069
  %453 = select i1 true, i64 %452, i64 0, !dbg !2069
  %454 = load i32, i32* %14, align 4, !dbg !2069
  %455 = zext i32 %454 to i64, !dbg !2069
  %456 = or i64 %453, %455, !dbg !2069
  store i64 %456, i64* %449, align 8, !dbg !2069
  %457 = load [2 x i64], [2 x i64]* %11, align 8, !dbg !2070
  %458 = bitcast [2 x i64]* %11 to i128*, !dbg !2070
  %459 = load i128, i128* %458, align 8, !dbg !2070
  store i128 %459, i128* %15, align 8, !dbg !2070
  %460 = load i128, i128* %15, align 8, !dbg !1936
  %461 = sub i128 %1, %460, !dbg !1936
  %462 = sub i128 %461, 1, !dbg !1936
  %463 = ashr i128 %462, 127, !dbg !1936
  %464 = select i1 true, i128 %463, i128 0, !dbg !1936
  call void @llvm.dbg.declare(metadata i128* %16, metadata !2071, metadata !DIExpression()), !dbg !1936
  store i128 %464, i128* %16, align 8, !dbg !1936
  %465 = load i128, i128* %16, align 8, !dbg !2074
  %466 = and i128 %465, 1, !dbg !2074
  %467 = trunc i128 %466 to i32, !dbg !2074
  store i32 %467, i32* %14, align 4, !dbg !2074
  %468 = load i128, i128* %16, align 8, !dbg !2075
  %469 = and i128 %1, %468, !dbg !2075
  %470 = load i128, i128* %15, align 8, !dbg !2075
  %471 = sub i128 %470, %469, !dbg !2075
  store i128 %471, i128* %15, align 8, !dbg !2075
  %472 = load i128, i128* %15, align 8, !dbg !2076
  %473 = bitcast i128* %15 to [2 x i64]*, !dbg !2076
  %474 = load [2 x i64], [2 x i64]* %473, align 8, !dbg !2076
  store [2 x i64] %474, [2 x i64]* %11, align 8, !dbg !2076
  br label %for.post, !dbg !2077

for.post:                                         ; preds = %for.body
  %475 = load i32, i32* %12, align 4, !dbg !2078
  %476 = sub i32 %475, 1, !dbg !2078
  store i32 %476, i32* %12, align 4, !dbg !2078
  br label %for.loop, !dbg !2078

for.done:                                         ; preds = %for.loop
  %477 = load [2 x i64], [2 x i64]* %10, align 8, !dbg !1939
  %478 = bitcast [2 x i64]* %10 to i128*, !dbg !1939
  %479 = load i128, i128* %478, align 8, !dbg !1939
  %480 = shl i128 %479, 1, !dbg !1939
  %481 = select i1 true, i128 %480, i128 0, !dbg !1939
  %482 = load i32, i32* %14, align 4, !dbg !1939
  %483 = zext i32 %482 to i128, !dbg !1939
  %484 = or i128 %481, %483, !dbg !1939
  call void @llvm.dbg.declare(metadata i128* %17, metadata !2079, metadata !DIExpression()), !dbg !1939
  store i128 %484, i128* %17, align 8, !dbg !1939
  %485 = icmp ne i128* %2, null, !dbg !2080
  %486 = zext i1 %485 to i8, !dbg !2080
  %487 = icmp ne i8 %486, 0, !dbg !2080
  br i1 %487, label %if.then43, label %if.done44, !dbg !2080

if.then43:                                        ; preds = %for.done
  %488 = load i128, i128* %15, align 8, !dbg !2081
  store i128 %488, i128* %2, align 8, !dbg !2081
  br label %if.done44, !dbg !2081

if.done44:                                        ; preds = %if.then43, %for.done
  %489 = load i128, i128* %17, align 8, !dbg !2084
  ret i128 %489, !dbg !2084
}

; Function Attrs: alwaysinline
define internal void @runtime.mem_alloc_bytes({ { i8*, i64 }, i8 }* noalias sret %agg.result, i64 %0, i64 %1, { i64, i64 } %2, %runtime.Source_Code_Location* byval align 8 %3, i8* noalias nocapture nonnull %__.context_ptr) #4 !dbg !2085 {
decls:
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2088, metadata !DIExpression()), !dbg !2089
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2090, metadata !DIExpression()), !dbg !2091
  %6 = alloca %runtime.Allocator, align 8
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %3, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2094, metadata !DIExpression()), !dbg !2095
  %7 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !2096
  br label %entry, !dbg !2095

entry:                                            ; preds = %decls
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = bitcast %runtime.Allocator* %6 to { i64, i64 }*
  store { i64, i64 } %2, { i64, i64 }* %8, align 8
  %9 = load %runtime.Allocator, %runtime.Allocator* %6, align 8
  call void @llvm.dbg.value(metadata %runtime.Allocator* %6, metadata !2098, metadata !DIExpression()), !dbg !2099
  %10 = bitcast i8* %__.context_ptr to %runtime.Context*
  %11 = icmp eq i64 %0, 0, !dbg !2100
  %12 = zext i1 %11 to i8, !dbg !2100
  %13 = icmp ne i8 %12, 0, !dbg !2100
  br i1 %13, label %if.then, label %if.done, !dbg !2100

if.then:                                          ; preds = %entry
  %14 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2101
  %15 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2101
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %14, align 8, !dbg !2101
  store i8 0, i8* %15, align 1, !dbg !2101
  ret void, !dbg !2101

if.done:                                          ; preds = %entry
  %16 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %6, i32 0, i32 0, !dbg !2104
  %17 = load i8*, i8** %16, align 8, !dbg !2104
  %18 = icmp eq i8* %17, null, !dbg !2104
  %19 = zext i1 %18 to i8, !dbg !2104
  %20 = icmp ne i8 %19, 0, !dbg !2104
  br i1 %20, label %if.then1, label %if.done2, !dbg !2104

if.then1:                                         ; preds = %if.done
  %21 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2105
  %22 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2105
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %21, align 8, !dbg !2105
  store i8 0, i8* %22, align 1, !dbg !2105
  ret void, !dbg !2105

if.done2:                                         ; preds = %if.done
  %23 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %6, i32 0, i32 0, !dbg !2096
  %24 = load i8*, i8** %23, align 8, !dbg !2096
  %25 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %6, i32 0, i32 1, !dbg !2096
  %26 = load i8*, i8** %25, align 8, !dbg !2096
  %27 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %3, align 8, !dbg !2096
  %28 = bitcast { { i8*, i64 }, i8 }* %7 to i8*, !dbg !2096
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 24, i1 false), !dbg !2096
  %29 = bitcast %runtime.Context* %10 to i8*, !dbg !2096
  %30 = bitcast i8* %24 to void ({ { i8*, i64 }, i8 }*, i8*, i8, i64, i64, i8*, i64, %runtime.Source_Code_Location*, i8*)*, !dbg !2096
  call void %30({ { i8*, i64 }, i8 }* sret %7, i8* %26, i8 0, i64 %0, i64 %1, i8* null, i64 0, %runtime.Source_Code_Location* byval %3, i8* %29) #4, !dbg !2096
  %31 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, align 8, !dbg !2096
  %32 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 0, !dbg !2096
  %33 = load { i8*, i64 }, { i8*, i64 }* %32, align 8, !dbg !2096
  %34 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 1, !dbg !2096
  %35 = load i8, i8* %34, align 1, !dbg !2096
  %36 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2096
  %37 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2096
  store { i8*, i64 } %33, { i8*, i64 }* %36, align 8, !dbg !2096
  store i8 %35, i8* %37, align 1, !dbg !2096
  ret void, !dbg !2096
}

define internal i64 @odinasm.pt0(i64 %0, i64 %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2108 {
decls:
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2111, metadata !DIExpression()), !dbg !2112
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2113, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2115, metadata !DIExpression()), !dbg !2116
  br label %entry, !dbg !2116

entry:                                            ; preds = %decls
  store i64 %0, i64* %2, align 8
  store i64 %1, i64* %3, align 8
  %4 = bitcast i8* %__.context_ptr to %runtime.Context*
  %5 = add i64 %0, %1, !dbg !2117
  ret i64 %5, !dbg !2117
}

; Function Attrs: alwaysinline
define internal void @runtime.mem_alloc({ { i8*, i64 }, i8 }* noalias sret %agg.result, i64 %0, i64 %1, { i64, i64 } %2, %runtime.Source_Code_Location* byval align 8 %3, i8* noalias nocapture nonnull %__.context_ptr) #4 !dbg !2119 {
decls:
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2120, metadata !DIExpression()), !dbg !2121
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2122, metadata !DIExpression()), !dbg !2123
  %6 = alloca %runtime.Allocator, align 8
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %3, metadata !2124, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2126, metadata !DIExpression()), !dbg !2127
  %7 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !2128
  br label %entry, !dbg !2127

entry:                                            ; preds = %decls
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = bitcast %runtime.Allocator* %6 to { i64, i64 }*
  store { i64, i64 } %2, { i64, i64 }* %8, align 8
  %9 = load %runtime.Allocator, %runtime.Allocator* %6, align 8
  call void @llvm.dbg.value(metadata %runtime.Allocator* %6, metadata !2130, metadata !DIExpression()), !dbg !2131
  %10 = bitcast i8* %__.context_ptr to %runtime.Context*
  %11 = icmp eq i64 %0, 0, !dbg !2132
  %12 = zext i1 %11 to i8, !dbg !2132
  %13 = icmp ne i8 %12, 0, !dbg !2132
  br i1 %13, label %if.then, label %cmp.or, !dbg !2132

cmp.or:                                           ; preds = %entry
  %14 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %6, i32 0, i32 0, !dbg !2132
  %15 = load i8*, i8** %14, align 8, !dbg !2132
  %16 = icmp eq i8* %15, null, !dbg !2132
  %17 = zext i1 %16 to i8, !dbg !2132
  %18 = icmp ne i8 %17, 0, !dbg !2132
  br i1 %18, label %if.then, label %if.done, !dbg !2132

if.then:                                          ; preds = %cmp.or, %entry
  %19 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2133
  %20 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2133
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %19, align 8, !dbg !2133
  store i8 0, i8* %20, align 1, !dbg !2133
  ret void, !dbg !2133

if.done:                                          ; preds = %cmp.or
  %21 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %6, i32 0, i32 0, !dbg !2128
  %22 = load i8*, i8** %21, align 8, !dbg !2128
  %23 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %6, i32 0, i32 1, !dbg !2128
  %24 = load i8*, i8** %23, align 8, !dbg !2128
  %25 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %3, align 8, !dbg !2128
  %26 = bitcast { { i8*, i64 }, i8 }* %7 to i8*, !dbg !2128
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 24, i1 false), !dbg !2128
  %27 = bitcast %runtime.Context* %10 to i8*, !dbg !2128
  %28 = bitcast i8* %22 to void ({ { i8*, i64 }, i8 }*, i8*, i8, i64, i64, i8*, i64, %runtime.Source_Code_Location*, i8*)*, !dbg !2128
  call void %28({ { i8*, i64 }, i8 }* sret %7, i8* %24, i8 0, i64 %0, i64 %1, i8* null, i64 0, %runtime.Source_Code_Location* byval %3, i8* %27) #4, !dbg !2128
  %29 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, align 8, !dbg !2128
  %30 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 0, !dbg !2128
  %31 = load { i8*, i64 }, { i8*, i64 }* %30, align 8, !dbg !2128
  %32 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 1, !dbg !2128
  %33 = load i8, i8* %32, align 1, !dbg !2128
  %34 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2128
  %35 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2128
  store { i8*, i64 } %31, { i8*, i64 }* %34, align 8, !dbg !2128
  store i8 %33, i8* %35, align 1, !dbg !2128
  ret void, !dbg !2128
}

define internal i64 @odinasm.pt1(i64 %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2136 {
decls:
  %1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2139, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2141, metadata !DIExpression()), !dbg !2142
  br label %entry, !dbg !2142

entry:                                            ; preds = %decls
  store i64 %0, i64* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  ret i64 %0, !dbg !2143
}

define internal %..any @odinasm.pt2(%..any %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2145 {
decls:
  %1 = alloca %..any, align 8
  call void @llvm.dbg.value(metadata %..any %0, metadata !2153, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2155, metadata !DIExpression()), !dbg !2156
  br label %entry, !dbg !2156

entry:                                            ; preds = %decls
  store %..any %0, %..any* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  ret %..any %0, !dbg !2157
}

define internal { i64*, i64 } @odinasm.pt3({ i64*, i64 } %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2159 {
decls:
  %1 = alloca { i64*, i64 }, align 8
  call void @llvm.dbg.value(metadata { i64*, i64 } %0, metadata !2163, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2165, metadata !DIExpression()), !dbg !2166
  br label %entry, !dbg !2166

entry:                                            ; preds = %decls
  store { i64*, i64 } %0, { i64*, i64 }* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  ret { i64*, i64 } %0, !dbg !2167
}

define internal i64 @odinasm.pt4(%..string %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2169 {
decls:
  %1 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2172, metadata !DIExpression()), !dbg !2173
  br label %entry, !dbg !2173

entry:                                            ; preds = %decls
  store %..string %0, %..string* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  %3 = extractvalue %..string %0, 1, !dbg !2174
  ret i64 %3, !dbg !2174
}

; Function Attrs: alwaysinline
define internal i8 @runtime.mem_free(i8* %0, { i64, i64 } %1, %runtime.Source_Code_Location* byval align 8 %2, i8* noalias nocapture nonnull %__.context_ptr) #4 !dbg !2176 {
decls:
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2179, metadata !DIExpression()), !dbg !2180
  %4 = alloca %runtime.Allocator, align 8
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %2, metadata !2181, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2183, metadata !DIExpression()), !dbg !2184
  %5 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !2185
  %6 = alloca i8, align 1, !dbg !2185
  br label %entry, !dbg !2184

entry:                                            ; preds = %decls
  store i8* %0, i8** %3, align 8
  %7 = bitcast %runtime.Allocator* %4 to { i64, i64 }*
  store { i64, i64 } %1, { i64, i64 }* %7, align 8
  %8 = load %runtime.Allocator, %runtime.Allocator* %4, align 8
  call void @llvm.dbg.value(metadata %runtime.Allocator* %4, metadata !2187, metadata !DIExpression()), !dbg !2188
  %9 = bitcast i8* %__.context_ptr to %runtime.Context*
  %10 = icmp eq i8* %0, null, !dbg !2189
  %11 = zext i1 %10 to i8, !dbg !2189
  %12 = icmp ne i8 %11, 0, !dbg !2189
  br i1 %12, label %if.then, label %cmp.or, !dbg !2189

cmp.or:                                           ; preds = %entry
  %13 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %4, i32 0, i32 0, !dbg !2189
  %14 = load i8*, i8** %13, align 8, !dbg !2189
  %15 = icmp eq i8* %14, null, !dbg !2189
  %16 = zext i1 %15 to i8, !dbg !2189
  %17 = icmp ne i8 %16, 0, !dbg !2189
  br i1 %17, label %if.then, label %if.done, !dbg !2189

if.then:                                          ; preds = %cmp.or, %entry
  ret i8 0, !dbg !2190

if.done:                                          ; preds = %cmp.or
  %18 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %4, i32 0, i32 0, !dbg !2185
  %19 = load i8*, i8** %18, align 8, !dbg !2185
  %20 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %4, i32 0, i32 1, !dbg !2185
  %21 = load i8*, i8** %20, align 8, !dbg !2185
  %22 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %2, align 8, !dbg !2185
  %23 = bitcast { { i8*, i64 }, i8 }* %5 to i8*, !dbg !2185
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 24, i1 false), !dbg !2185
  %24 = bitcast %runtime.Context* %9 to i8*, !dbg !2185
  %25 = bitcast i8* %19 to void ({ { i8*, i64 }, i8 }*, i8*, i8, i64, i64, i8*, i64, %runtime.Source_Code_Location*, i8*)*, !dbg !2185
  call void %25({ { i8*, i64 }, i8 }* sret %5, i8* %21, i8 1, i64 0, i64 0, i8* %0, i64 0, %runtime.Source_Code_Location* byval %2, i8* %24) #4, !dbg !2185
  %26 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %5, align 8, !dbg !2185
  %27 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %5, i32 0, i32 0, !dbg !2185
  %28 = load { i8*, i64 }, { i8*, i64 }* %27, align 8, !dbg !2185
  %29 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %5, i32 0, i32 1, !dbg !2185
  %30 = load i8, i8* %29, align 1, !dbg !2185
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2193, metadata !DIExpression()), !dbg !2194
  store i8 %30, i8* %6, align 1, !dbg !2185
  %31 = load i8, i8* %6, align 1, !dbg !2195
  ret i8 %31, !dbg !2195
}

define internal %..string @odinasm.pt5(%..string %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2196 {
decls:
  %1 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2201, metadata !DIExpression()), !dbg !2202
  br label %entry, !dbg !2202

entry:                                            ; preds = %decls
  store %..string %0, %..string* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  ret %..string %0, !dbg !2203
}

define internal %..string @odinasm.pt6(%..string %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2205 {
decls:
  %1 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2208, metadata !DIExpression()), !dbg !2209
  %2 = alloca { %..string, i8 }, align 8, !dbg !2210
  %3 = alloca %..string, align 8, !dbg !2210
  br label %entry, !dbg !2209

entry:                                            ; preds = %decls
  store %..string %0, %..string* %1, align 8
  %4 = bitcast i8* %__.context_ptr to %runtime.Context*
  %5 = getelementptr inbounds %runtime.Context, %runtime.Context* %4, i32 0, i32 0, !dbg !2210
  %6 = load %runtime.Allocator, %runtime.Allocator* %5, align 8, !dbg !2210
  %7 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* @"ggv$3f", align 8, !dbg !2210
  %8 = bitcast %runtime.Allocator* %5 to { i64, i64 }*, !dbg !2210
  %9 = load { i64, i64 }, { i64, i64 }* %8, align 8, !dbg !2210
  %10 = bitcast { %..string, i8 }* %2 to i8*, !dbg !2210
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i1 false), !dbg !2210
  %11 = bitcast %runtime.Context* %4 to i8*, !dbg !2210
  call void @strings.clone({ %..string, i8 }* sret %2, %..string %0, { i64, i64 } %9, %runtime.Source_Code_Location* byval @"ggv$3f", i8* %11), !dbg !2210
  %12 = load { %..string, i8 }, { %..string, i8 }* %2, align 8, !dbg !2210
  %13 = getelementptr inbounds { %..string, i8 }, { %..string, i8 }* %2, i32 0, i32 0, !dbg !2210
  %14 = load %..string, %..string* %13, align 8, !dbg !2210
  call void @llvm.dbg.declare(metadata %..string* %3, metadata !2212, metadata !DIExpression()), !dbg !2210
  store %..string %14, %..string* %3, align 8, !dbg !2210
  %15 = load %..string, %..string* %3, align 8, !dbg !2213
  ret %..string %15, !dbg !2213
}

define internal void @odinasm.pt7(i8* %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2214 {
decls:
  %1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2219, metadata !DIExpression()), !dbg !2220
  br label %entry, !dbg !2220

entry:                                            ; preds = %decls
  store i8* %0, i8** %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  ret void, !dbg !2221
}

define internal void @odinasm.pt8(%..string %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2222 {
decls:
  %1 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2227, metadata !DIExpression()), !dbg !2228
  br label %entry, !dbg !2228

entry:                                            ; preds = %decls
  store %..string %0, %..string* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  %3 = extractvalue %..string %0, 1, !dbg !2229
  %4 = bitcast %runtime.Context* %2 to i8*, !dbg !2229
  %5 = call i64 @odinasm.pt1(i64 %3, i8* %4), !dbg !2229
  ret void, !dbg !2231
}

define internal void @odinasm.pt9(%..string %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2232 {
decls:
  %1 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !2233, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2235, metadata !DIExpression()), !dbg !2236
  br label %entry, !dbg !2236

entry:                                            ; preds = %decls
  store %..string %0, %..string* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  %3 = extractvalue %..string %0, 0, !dbg !2237
  %4 = bitcast %runtime.Context* %2 to i8*, !dbg !2237
  call void @odinasm.pt7(i8* %3, i8* %4), !dbg !2237
  ret void, !dbg !2239
}

define internal void @odinasm.main(i8* noalias nocapture nonnull %__.context_ptr) !dbg !2240 {
decls:
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2241, metadata !DIExpression()), !dbg !2242
  %0 = alloca i64, align 8, !dbg !2243
  %1 = alloca i64, align 8, !dbg !2245
  %2 = alloca i64, align 8, !dbg !2246
  %3 = alloca %..any, align 8, !dbg !2246
  %4 = alloca %..any, align 8, !dbg !2246
  %5 = alloca [3 x i64], align 16, !dbg !2247
  %6 = alloca { i64*, i64 }, align 8, !dbg !2247
  %7 = alloca { i64*, i64 }, align 8, !dbg !2247
  %8 = alloca i64, align 8, !dbg !2248
  %9 = alloca %..string, align 8, !dbg !2249
  %10 = alloca %..string, align 8, !dbg !2250
  br label %entry, !dbg !2242

entry:                                            ; preds = %decls
  %11 = bitcast i8* %__.context_ptr to %runtime.Context*
  %12 = bitcast %runtime.Context* %11 to i8*, !dbg !2243
  %13 = call i64 @odinasm.pt0(i64 65, i64 66, i8* %12), !dbg !2243
  call void @llvm.dbg.declare(metadata i64* %0, metadata !2251, metadata !DIExpression()), !dbg !2243
  store i64 %13, i64* %0, align 8, !dbg !2243
  %14 = bitcast %runtime.Context* %11 to i8*, !dbg !2245
  %15 = call i64 @odinasm.pt1(i64 65, i8* %14), !dbg !2245
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2252, metadata !DIExpression()), !dbg !2245
  store i64 %15, i64* %1, align 8, !dbg !2245
  store i64 65, i64* %2, align 8, !dbg !2246
  %16 = bitcast i64* %2 to i8*, !dbg !2246
  %17 = getelementptr inbounds %..any, %..any* %3, i32 0, i32 0, !dbg !2246
  %18 = getelementptr inbounds %..any, %..any* %3, i32 0, i32 1, !dbg !2246
  store i8* %16, i8** %17, align 8, !dbg !2246
  store i64 4683743612465315841, i64* %18, align 8, !dbg !2246
  %19 = load %..any, %..any* %3, align 8, !dbg !2246
  %20 = bitcast %runtime.Context* %11 to i8*, !dbg !2246
  %21 = call %..any @odinasm.pt2(%..any %19, i8* %20), !dbg !2246
  call void @llvm.dbg.declare(metadata %..any* %4, metadata !2253, metadata !DIExpression()), !dbg !2246
  store %..any %21, %..any* %4, align 8, !dbg !2246
  store [3 x i64] [i64 65, i64 66, i64 67], [3 x i64]* %5, align 8, !dbg !2247
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0, !dbg !2247
  %23 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %6, i32 0, i32 0, !dbg !2247
  store i64* %22, i64** %23, align 8, !dbg !2247
  %24 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %6, i32 0, i32 1, !dbg !2247
  store i64 3, i64* %24, align 8, !dbg !2247
  %25 = load { i64*, i64 }, { i64*, i64 }* %6, align 8, !dbg !2247
  %26 = bitcast %runtime.Context* %11 to i8*, !dbg !2247
  %27 = call { i64*, i64 } @odinasm.pt3({ i64*, i64 } %25, i8* %26), !dbg !2247
  call void @llvm.dbg.declare(metadata { i64*, i64 }* %7, metadata !2254, metadata !DIExpression()), !dbg !2247
  store { i64*, i64 } %27, { i64*, i64 }* %7, align 8, !dbg !2247
  %28 = bitcast %runtime.Context* %11 to i8*, !dbg !2248
  %29 = call i64 @odinasm.pt4(%..string { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"csbs$8c", i64 0, i64 0), i64 29 }, i8* %28), !dbg !2248
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2255, metadata !DIExpression()), !dbg !2248
  store i64 %29, i64* %8, align 8, !dbg !2248
  %30 = bitcast %runtime.Context* %11 to i8*, !dbg !2249
  %31 = call %..string @odinasm.pt5(%..string { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"csbs$8c", i64 0, i64 0), i64 29 }, i8* %30), !dbg !2249
  call void @llvm.dbg.declare(metadata %..string* %9, metadata !2256, metadata !DIExpression()), !dbg !2249
  store %..string %31, %..string* %9, align 8, !dbg !2249
  %32 = bitcast %runtime.Context* %11 to i8*, !dbg !2250
  %33 = call %..string @odinasm.pt6(%..string { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"csbs$8c", i64 0, i64 0), i64 29 }, i8* %32), !dbg !2250
  call void @llvm.dbg.declare(metadata %..string* %10, metadata !2257, metadata !DIExpression()), !dbg !2250
  store %..string %33, %..string* %10, align 8, !dbg !2250
  %34 = bitcast %runtime.Context* %11 to i8*, !dbg !2258
  call void @odinasm.pt8(%..string { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"csbs$8c", i64 0, i64 0), i64 29 }, i8* %34), !dbg !2258
  %35 = bitcast %runtime.Context* %11 to i8*, !dbg !2259
  call void @odinasm.pt9(%..string { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"csbs$8c", i64 0, i64 0), i64 29 }, i8* %35), !dbg !2259
  ret void, !dbg !2260
}

define internal i8 @runtime.memory_equal(i8* %0, i8* %1, i64 %2) !dbg !2261 {
decls:
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()), !dbg !2265
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %1, metadata !2266, metadata !DIExpression()), !dbg !2267
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %2, metadata !2268, metadata !DIExpression()), !dbg !2269
  %6 = alloca i8*, align 8, !dbg !2270
  %7 = alloca i8*, align 8, !dbg !2270
  %8 = alloca i64, align 8, !dbg !2272
  %9 = alloca i64, align 8, !dbg !2273
  %10 = alloca i64, align 8, !dbg !2275
  %11 = alloca i64, align 8, !dbg !2275
  %12 = alloca i64, align 8, !dbg !2277
  %13 = alloca i64, align 8, !dbg !2277
  %14 = alloca i8*, align 8, !dbg !2280
  %15 = alloca i8*, align 8, !dbg !2281
  %16 = alloca i32, align 4, !dbg !2282
  %17 = alloca i32, align 4, !dbg !2282
  %18 = alloca i8*, align 8, !dbg !2285
  %19 = alloca i8*, align 8, !dbg !2286
  %20 = alloca i16, align 2, !dbg !2287
  %21 = alloca i16, align 2, !dbg !2287
  %22 = alloca i8*, align 8, !dbg !2290
  %23 = alloca i8*, align 8, !dbg !2291
  br label %entry, !dbg !2292

entry:                                            ; preds = %decls
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 %2, i64* %5, align 8
  %24 = icmp eq i64 %2, 0, !dbg !2293
  %25 = zext i1 %24 to i8, !dbg !2293
  %26 = icmp eq i8 1, %25, !dbg !2293
  br i1 %26, label %switch.case.body, label %switch.case.next, !dbg !2293

switch.case.next:                                 ; preds = %entry
  %27 = icmp eq i8* %0, %1, !dbg !2294
  %28 = zext i1 %27 to i8, !dbg !2294
  %29 = icmp eq i8 1, %28, !dbg !2294
  br i1 %29, label %switch.case.body2, label %switch.case.next1, !dbg !2294

switch.case.body:                                 ; preds = %entry
  ret i8 1, !dbg !2294

switch.case.next1:                                ; preds = %switch.case.next
  br label %switch.done, !dbg !2296

switch.case.body2:                                ; preds = %switch.case.next
  ret i8 1, !dbg !2296

switch.done:                                      ; preds = %switch.case.next1
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2297, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2298, metadata !DIExpression()), !dbg !2299
  store i8* %0, i8** %6, align 8, !dbg !2270
  store i8* %1, i8** %7, align 8, !dbg !2270
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2300, metadata !DIExpression()), !dbg !2272
  store i64 %2, i64* %8, align 8, !dbg !2272
  br label %if.init, !dbg !2301

if.init:                                          ; preds = %switch.done
  %30 = load i64, i64* %8, align 8, !dbg !2273
  %31 = lshr i64 %30, 3, !dbg !2273
  %32 = select i1 true, i64 %31, i64 0, !dbg !2273
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2302, metadata !DIExpression()), !dbg !2273
  store i64 %32, i64* %9, align 8, !dbg !2273
  %33 = load i64, i64* %9, align 8, !dbg !2273
  %34 = icmp ne i64 %33, 0, !dbg !2273
  %35 = zext i1 %34 to i8, !dbg !2273
  %36 = icmp ne i8 %35, 0, !dbg !2273
  br i1 %36, label %if.then, label %if.done4, !dbg !2273

if.then:                                          ; preds = %if.init
  store i64 0, i64* %10, align 8, !dbg !2275
  store i64 0, i64* %11, align 8, !dbg !2275
  br label %for.interval.loop, !dbg !2275

for.interval.loop:                                ; preds = %for.interval.post, %if.then
  %37 = load i64, i64* %9, align 8, !dbg !2275
  %38 = load i64, i64* %10, align 8, !dbg !2275
  %39 = icmp ult i64 %38, %37, !dbg !2275
  br i1 %39, label %for.interval.body, label %for.interval.done, !dbg !2275

for.interval.body:                                ; preds = %for.interval.loop
  %40 = load i64, i64* %10, align 8, !dbg !2275
  %41 = load i64, i64* %11, align 8, !dbg !2275
  %42 = load i8*, i8** %6, align 8, !dbg !2277
  %43 = bitcast i8* %42 to i64*, !dbg !2277
  %44 = bitcast i64* %12 to i8*, !dbg !2277
  %45 = bitcast i64* %43 to i8*, !dbg !2277
  call void @llvm.memcpy.inline.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i1 false), !dbg !2277
  %46 = load i64, i64* %12, align 8, !dbg !2277
  %47 = load i8*, i8** %7, align 8, !dbg !2277
  %48 = bitcast i8* %47 to i64*, !dbg !2277
  %49 = bitcast i64* %13 to i8*, !dbg !2277
  %50 = bitcast i64* %48 to i8*, !dbg !2277
  call void @llvm.memcpy.inline.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i1 false), !dbg !2277
  %51 = load i64, i64* %13, align 8, !dbg !2277
  %52 = icmp ne i64 %46, %51, !dbg !2277
  %53 = zext i1 %52 to i8, !dbg !2277
  %54 = icmp ne i8 %53, 0, !dbg !2277
  br i1 %54, label %if.then3, label %if.done, !dbg !2277

if.then3:                                         ; preds = %for.interval.body
  ret i8 0, !dbg !2303

if.done:                                          ; preds = %for.interval.body
  %55 = load i8*, i8** %6, align 8, !dbg !2280
  %56 = getelementptr i8, i8* %55, i64 8, !dbg !2280
  store i8* %56, i8** %14, align 8, !dbg !2280
  %57 = load i8*, i8** %14, align 8, !dbg !2280
  store i8* %57, i8** %6, align 8, !dbg !2280
  %58 = load i8*, i8** %7, align 8, !dbg !2281
  %59 = getelementptr i8, i8* %58, i64 8, !dbg !2281
  store i8* %59, i8** %15, align 8, !dbg !2281
  %60 = load i8*, i8** %15, align 8, !dbg !2281
  store i8* %60, i8** %7, align 8, !dbg !2281
  br label %for.interval.post, !dbg !2281

for.interval.post:                                ; preds = %if.done
  %61 = load i64, i64* %10, align 8, !dbg !2281
  %62 = add i64 %61, 1, !dbg !2281
  store i64 %62, i64* %10, align 8, !dbg !2281
  %63 = load i64, i64* %11, align 8, !dbg !2281
  %64 = add i64 %63, 1, !dbg !2281
  store i64 %64, i64* %11, align 8, !dbg !2281
  br label %for.interval.loop, !dbg !2281

for.interval.done:                                ; preds = %for.interval.loop
  br label %if.done4, !dbg !2281

if.done4:                                         ; preds = %for.interval.done, %if.init
  %65 = load i64, i64* %8, align 8, !dbg !2306
  %66 = and i64 %65, 4, !dbg !2306
  %67 = icmp ne i64 %66, 0, !dbg !2306
  %68 = zext i1 %67 to i8, !dbg !2306
  %69 = icmp ne i8 %68, 0, !dbg !2306
  br i1 %69, label %if.then5, label %if.done8, !dbg !2306

if.then5:                                         ; preds = %if.done4
  %70 = load i8*, i8** %6, align 8, !dbg !2282
  %71 = bitcast i8* %70 to i32*, !dbg !2282
  %72 = bitcast i32* %16 to i8*, !dbg !2282
  %73 = bitcast i32* %71 to i8*, !dbg !2282
  call void @llvm.memcpy.inline.p0i8.p0i8.i64(i8* %72, i8* %73, i64 4, i1 false), !dbg !2282
  %74 = load i32, i32* %16, align 4, !dbg !2282
  %75 = load i8*, i8** %7, align 8, !dbg !2282
  %76 = bitcast i8* %75 to i32*, !dbg !2282
  %77 = bitcast i32* %17 to i8*, !dbg !2282
  %78 = bitcast i32* %76 to i8*, !dbg !2282
  call void @llvm.memcpy.inline.p0i8.p0i8.i64(i8* %77, i8* %78, i64 4, i1 false), !dbg !2282
  %79 = load i32, i32* %17, align 4, !dbg !2282
  %80 = icmp ne i32 %74, %79, !dbg !2282
  %81 = zext i1 %80 to i8, !dbg !2282
  %82 = icmp ne i8 %81, 0, !dbg !2282
  br i1 %82, label %if.then6, label %if.done7, !dbg !2282

if.then6:                                         ; preds = %if.then5
  ret i8 0, !dbg !2307

if.done7:                                         ; preds = %if.then5
  %83 = load i8*, i8** %6, align 8, !dbg !2285
  %84 = getelementptr i8, i8* %83, i64 4, !dbg !2285
  store i8* %84, i8** %18, align 8, !dbg !2285
  %85 = load i8*, i8** %18, align 8, !dbg !2285
  store i8* %85, i8** %6, align 8, !dbg !2285
  %86 = load i8*, i8** %7, align 8, !dbg !2286
  %87 = getelementptr i8, i8* %86, i64 4, !dbg !2286
  store i8* %87, i8** %19, align 8, !dbg !2286
  %88 = load i8*, i8** %19, align 8, !dbg !2286
  store i8* %88, i8** %7, align 8, !dbg !2286
  br label %if.done8, !dbg !2286

if.done8:                                         ; preds = %if.done7, %if.done4
  %89 = load i64, i64* %8, align 8, !dbg !2310
  %90 = and i64 %89, 2, !dbg !2310
  %91 = icmp ne i64 %90, 0, !dbg !2310
  %92 = zext i1 %91 to i8, !dbg !2310
  %93 = icmp ne i8 %92, 0, !dbg !2310
  br i1 %93, label %if.then9, label %if.done12, !dbg !2310

if.then9:                                         ; preds = %if.done8
  %94 = load i8*, i8** %6, align 8, !dbg !2287
  %95 = bitcast i8* %94 to i16*, !dbg !2287
  %96 = bitcast i16* %20 to i8*, !dbg !2287
  %97 = bitcast i16* %95 to i8*, !dbg !2287
  call void @llvm.memcpy.inline.p0i8.p0i8.i64(i8* %96, i8* %97, i64 2, i1 false), !dbg !2287
  %98 = load i16, i16* %20, align 2, !dbg !2287
  %99 = load i8*, i8** %7, align 8, !dbg !2287
  %100 = bitcast i8* %99 to i16*, !dbg !2287
  %101 = bitcast i16* %21 to i8*, !dbg !2287
  %102 = bitcast i16* %100 to i8*, !dbg !2287
  call void @llvm.memcpy.inline.p0i8.p0i8.i64(i8* %101, i8* %102, i64 2, i1 false), !dbg !2287
  %103 = load i16, i16* %21, align 2, !dbg !2287
  %104 = icmp ne i16 %98, %103, !dbg !2287
  %105 = zext i1 %104 to i8, !dbg !2287
  %106 = icmp ne i8 %105, 0, !dbg !2287
  br i1 %106, label %if.then10, label %if.done11, !dbg !2287

if.then10:                                        ; preds = %if.then9
  ret i8 0, !dbg !2311

if.done11:                                        ; preds = %if.then9
  %107 = load i8*, i8** %6, align 8, !dbg !2290
  %108 = getelementptr i8, i8* %107, i64 2, !dbg !2290
  store i8* %108, i8** %22, align 8, !dbg !2290
  %109 = load i8*, i8** %22, align 8, !dbg !2290
  store i8* %109, i8** %6, align 8, !dbg !2290
  %110 = load i8*, i8** %7, align 8, !dbg !2291
  %111 = getelementptr i8, i8* %110, i64 2, !dbg !2291
  store i8* %111, i8** %23, align 8, !dbg !2291
  %112 = load i8*, i8** %23, align 8, !dbg !2291
  store i8* %112, i8** %7, align 8, !dbg !2291
  br label %if.done12, !dbg !2291

if.done12:                                        ; preds = %if.done11, %if.done8
  %113 = load i64, i64* %8, align 8, !dbg !2314
  %114 = and i64 %113, 1, !dbg !2314
  %115 = icmp ne i64 %114, 0, !dbg !2314
  %116 = zext i1 %115 to i8, !dbg !2314
  %117 = icmp ne i8 %116, 0, !dbg !2314
  br i1 %117, label %cmp.and, label %if.done15, !dbg !2314

cmp.and:                                          ; preds = %if.done12
  %118 = load i8*, i8** %6, align 8, !dbg !2314
  %foo = getelementptr i8, i8* %118, i64 0, !dbg !2314
  %119 = load i8, i8* %foo, align 1, !dbg !2314
  %120 = load i8*, i8** %7, align 8, !dbg !2314
  %foo13 = getelementptr i8, i8* %120, i64 0, !dbg !2314
  %121 = load i8, i8* %foo13, align 1, !dbg !2314
  %122 = icmp ne i8 %119, %121, !dbg !2314
  %123 = zext i1 %122 to i8, !dbg !2314
  %124 = icmp ne i8 %123, 0, !dbg !2314
  br i1 %124, label %if.then14, label %if.done15, !dbg !2314

if.then14:                                        ; preds = %cmp.and
  ret i8 0, !dbg !2315

if.done15:                                        ; preds = %cmp.and, %if.done12
  ret i8 1, !dbg !2318
}

define internal { i64, i64 } @runtime.os_write({ i8*, i64 } %0) !dbg !2319 {
decls:
  %1 = alloca { i8*, i64 }, align 8
  call void @llvm.dbg.value(metadata { i8*, i64 } %0, metadata !2320, metadata !DIExpression()), !dbg !2321
  %2 = alloca { i64, i64 }, align 8, !dbg !2322
  br label %entry, !dbg !2324

entry:                                            ; preds = %decls
  store { i8*, i64 } %0, { i8*, i64 }* %1, align 8
  %3 = call { i64, i64 } @runtime._os_write({ i8*, i64 } %0), !dbg !2322
  %4 = extractvalue { i64, i64 } %3, 0, !dbg !2322
  %5 = extractvalue { i64, i64 } %3, 1, !dbg !2322
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0, !dbg !2322
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1, !dbg !2322
  store i64 %4, i64* %6, align 8, !dbg !2322
  store i64 %5, i64* %7, align 8, !dbg !2322
  %8 = load { i64, i64 }, { i64, i64 }* %2, align 8, !dbg !2322
  ret { i64, i64 } %8, !dbg !2322
}

define internal i64 @runtime.print_byte(i8 %0) !dbg !2325 {
decls:
  %1 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !2328, metadata !DIExpression()), !dbg !2329
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i64 }, align 8, !dbg !2330
  %4 = alloca [1 x i8], align 16, !dbg !2330
  %5 = alloca { i8*, i64 }, align 8, !dbg !2330
  br label %entry, !dbg !2332

entry:                                            ; preds = %decls
  store i8 %0, i8* %1, align 1
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2333, metadata !DIExpression()), !dbg !2334
  store i64 0, i64* %2, align 8
  %6 = bitcast { i8*, i64 }* %3 to i8*, !dbg !2330
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i1 false), !dbg !2330
  store [1 x i8] zeroinitializer, [1 x i8]* %4, align 1, !dbg !2330
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !2330
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0, !dbg !2330
  store i8* %7, i8** %8, align 8, !dbg !2330
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1, !dbg !2330
  store i64 1, i64* %9, align 8, !dbg !2330
  %10 = load { i8*, i64 }, { i8*, i64 }* %5, align 8, !dbg !2330
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0, !dbg !2330
  %12 = load i8*, i8** %11, align 8, !dbg !2330
  %13 = getelementptr i8, i8* %12, i64 0, !dbg !2330
  store i8 %0, i8* %13, align 1, !dbg !2330
  %14 = extractvalue { i8*, i64 } %10, 1, !dbg !2330
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0, !dbg !2330
  store i8* %12, i8** %15, align 8, !dbg !2330
  %16 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1, !dbg !2330
  store i64 %14, i64* %16, align 8, !dbg !2330
  %17 = load { i8*, i64 }, { i8*, i64 }* %3, align 8, !dbg !2330
  %18 = call { i64, i64 } @runtime.os_write({ i8*, i64 } %17), !dbg !2330
  %19 = extractvalue { i64, i64 } %18, 0, !dbg !2330
  %20 = extractvalue { i64, i64 } %18, 1, !dbg !2330
  store i64 %19, i64* %2, align 8, !dbg !2330
  %21 = load i64, i64* %2, align 8, !dbg !2335
  store i64 %21, i64* %2, align 8, !dbg !2335
  ret i64 %21, !dbg !2335
}

define internal void @runtime.print_u64(i64 %0) !dbg !2336 {
decls:
  %1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2339, metadata !DIExpression()), !dbg !2340
  %2 = alloca [129 x i8], align 1, !dbg !2341
  %3 = alloca i64, align 8, !dbg !2343
  %4 = alloca i64, align 8, !dbg !2344
  %5 = alloca i64, align 8, !dbg !2345
  %6 = alloca { i8*, i64 }, align 8, !dbg !2346
  br label %entry, !dbg !2347

entry:                                            ; preds = %decls
  store i64 %0, i64* %1, align 8
  call void @llvm.dbg.declare(metadata [129 x i8]* %2, metadata !2348, metadata !DIExpression()), !dbg !2341
  %7 = bitcast [129 x i8]* %2 to i8*, !dbg !2341
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 129, i1 false), !dbg !2341
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2352, metadata !DIExpression()), !dbg !2343
  store i64 129, i64* %3, align 8, !dbg !2343
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2353, metadata !DIExpression()), !dbg !2344
  store i64 10, i64* %4, align 8, !dbg !2344
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2354, metadata !DIExpression()), !dbg !2345
  store i64 %0, i64* %5, align 8, !dbg !2345
  br label %for.loop, !dbg !2355

for.loop:                                         ; preds = %for.body, %entry
  %8 = load i64, i64* %5, align 8, !dbg !2357
  %9 = load i64, i64* %4, align 8, !dbg !2357
  %10 = icmp uge i64 %8, %9, !dbg !2357
  %11 = zext i1 %10 to i8, !dbg !2357
  %12 = icmp ne i8 %11, 0, !dbg !2357
  br i1 %12, label %for.body, label %for.done, !dbg !2357

for.body:                                         ; preds = %for.loop
  %13 = load i64, i64* %3, align 8, !dbg !2358
  %14 = sub i64 %13, 1, !dbg !2358
  store i64 %14, i64* %3, align 8, !dbg !2358
  %15 = load i64, i64* %3, align 8, !dbg !2360
  %16 = getelementptr [129 x i8], [129 x i8]* %2, i64 0, i64 %15, !dbg !2360
  %17 = load %..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, align 8, !dbg !2360
  %18 = load i8*, i8** getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 0), align 8, !dbg !2360
  %19 = load i64, i64* getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 1), align 8, !dbg !2360
  %20 = load i64, i64* %5, align 8, !dbg !2360
  %21 = load i64, i64* %4, align 8, !dbg !2360
  %22 = urem i64 %20, %21, !dbg !2360
  %23 = getelementptr i8, i8* %18, i64 %22, !dbg !2360
  %24 = load i8, i8* %23, align 1, !dbg !2360
  store i8 %24, i8* %16, align 1, !dbg !2360
  %25 = load i64, i64* %4, align 8, !dbg !2361
  %26 = load i64, i64* %5, align 8, !dbg !2361
  %27 = udiv i64 %26, %25, !dbg !2361
  store i64 %27, i64* %5, align 8, !dbg !2361
  br label %for.loop, !dbg !2362

for.done:                                         ; preds = %for.loop
  %28 = load i64, i64* %3, align 8, !dbg !2363
  %29 = sub i64 %28, 1, !dbg !2363
  store i64 %29, i64* %3, align 8, !dbg !2363
  %30 = load i64, i64* %3, align 8, !dbg !2364
  %31 = getelementptr [129 x i8], [129 x i8]* %2, i64 0, i64 %30, !dbg !2364
  %32 = load %..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, align 8, !dbg !2364
  %33 = load i8*, i8** getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 0), align 8, !dbg !2364
  %34 = load i64, i64* getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 1), align 8, !dbg !2364
  %35 = load i64, i64* %5, align 8, !dbg !2364
  %36 = load i64, i64* %4, align 8, !dbg !2364
  %37 = urem i64 %35, %36, !dbg !2364
  %38 = getelementptr i8, i8* %33, i64 %37, !dbg !2364
  %39 = load i8, i8* %38, align 1, !dbg !2364
  store i8 %39, i8* %31, align 1, !dbg !2364
  %40 = load i64, i64* %3, align 8, !dbg !2346
  %41 = load [129 x i8], [129 x i8]* %2, align 1, !dbg !2346
  %42 = getelementptr [129 x i8], [129 x i8]* %2, i64 0, i64 0, !dbg !2346
  %43 = getelementptr i8, i8* %42, i64 %40, !dbg !2346
  %44 = sub i64 129, %40, !dbg !2346
  %45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0, !dbg !2346
  store i8* %43, i8** %45, align 8, !dbg !2346
  %46 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1, !dbg !2346
  store i64 %44, i64* %46, align 8, !dbg !2346
  %47 = load { i8*, i64 }, { i8*, i64 }* %6, align 8, !dbg !2346
  %48 = call { i64, i64 } @runtime.os_write({ i8*, i64 } %47), !dbg !2346
  ret void, !dbg !2365
}

define internal void @runtime.print_i64(i64 %0) !dbg !2366 {
decls:
  %1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2369, metadata !DIExpression()), !dbg !2370
  %2 = alloca i64, align 8, !dbg !2371
  %3 = alloca i8, align 1, !dbg !2373
  %4 = alloca [129 x i8], align 1, !dbg !2374
  %5 = alloca i64, align 8, !dbg !2375
  %6 = alloca { i8*, i64 }, align 8, !dbg !2376
  br label %entry, !dbg !2377

entry:                                            ; preds = %decls
  store i64 %0, i64* %1, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2378, metadata !DIExpression()), !dbg !2371
  store i64 %0, i64* %2, align 8, !dbg !2371
  %7 = load i64, i64* %2, align 8, !dbg !2373
  %8 = icmp slt i64 %7, 0, !dbg !2373
  %9 = zext i1 %8 to i8, !dbg !2373
  call void @llvm.dbg.declare(metadata i8* %3, metadata !2379, metadata !DIExpression()), !dbg !2373
  store i8 %9, i8* %3, align 1, !dbg !2373
  %10 = load i64, i64* %2, align 8, !dbg !2380
  %11 = icmp slt i64 %10, 0, !dbg !2380
  %12 = sub i64 0, %10, !dbg !2380
  %13 = select i1 %11, i64 %12, i64 %10, !dbg !2380
  store i64 %13, i64* %2, align 8, !dbg !2380
  call void @llvm.dbg.declare(metadata [129 x i8]* %4, metadata !2381, metadata !DIExpression()), !dbg !2374
  %14 = bitcast [129 x i8]* %4 to i8*, !dbg !2374
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 129, i1 false), !dbg !2374
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2382, metadata !DIExpression()), !dbg !2375
  store i64 129, i64* %5, align 8, !dbg !2375
  br label %for.loop, !dbg !2383

for.loop:                                         ; preds = %for.body, %entry
  %15 = load i64, i64* %2, align 8, !dbg !2385
  %16 = icmp sge i64 %15, 10, !dbg !2385
  %17 = zext i1 %16 to i8, !dbg !2385
  %18 = icmp ne i8 %17, 0, !dbg !2385
  br i1 %18, label %for.body, label %for.done, !dbg !2385

for.body:                                         ; preds = %for.loop
  %19 = load i64, i64* %5, align 8, !dbg !2386
  %20 = sub i64 %19, 1, !dbg !2386
  store i64 %20, i64* %5, align 8, !dbg !2386
  %21 = load i64, i64* %5, align 8, !dbg !2388
  %22 = getelementptr [129 x i8], [129 x i8]* %4, i64 0, i64 %21, !dbg !2388
  %23 = load %..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, align 8, !dbg !2388
  %24 = load i8*, i8** getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 0), align 8, !dbg !2388
  %25 = load i64, i64* getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 1), align 8, !dbg !2388
  %26 = load i64, i64* %2, align 8, !dbg !2388
  %27 = srem i64 %26, 10, !dbg !2388
  %28 = getelementptr i8, i8* %24, i64 %27, !dbg !2388
  %29 = load i8, i8* %28, align 1, !dbg !2388
  store i8 %29, i8* %22, align 1, !dbg !2388
  %30 = load i64, i64* %2, align 8, !dbg !2389
  %31 = sdiv i64 %30, 10, !dbg !2389
  store i64 %31, i64* %2, align 8, !dbg !2389
  br label %for.loop, !dbg !2390

for.done:                                         ; preds = %for.loop
  %32 = load i64, i64* %5, align 8, !dbg !2391
  %33 = sub i64 %32, 1, !dbg !2391
  store i64 %33, i64* %5, align 8, !dbg !2391
  %34 = load i64, i64* %5, align 8, !dbg !2392
  %35 = getelementptr [129 x i8], [129 x i8]* %4, i64 0, i64 %34, !dbg !2392
  %36 = load %..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, align 8, !dbg !2392
  %37 = load i8*, i8** getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 0), align 8, !dbg !2392
  %38 = load i64, i64* getelementptr inbounds (%..string, %..string* @runtime._INTEGER_DIGITS_VAR-505, i64 0, i32 1), align 8, !dbg !2392
  %39 = load i64, i64* %2, align 8, !dbg !2392
  %40 = srem i64 %39, 10, !dbg !2392
  %41 = getelementptr i8, i8* %37, i64 %40, !dbg !2392
  %42 = load i8, i8* %41, align 1, !dbg !2392
  store i8 %42, i8* %35, align 1, !dbg !2392
  %43 = load i8, i8* %3, align 1, !dbg !2393
  %44 = icmp ne i8 %43, 0, !dbg !2393
  br i1 %44, label %if.then, label %if.done, !dbg !2393

if.then:                                          ; preds = %for.done
  %45 = load i64, i64* %5, align 8, !dbg !2394
  %46 = sub i64 %45, 1, !dbg !2394
  store i64 %46, i64* %5, align 8, !dbg !2394
  %47 = load i64, i64* %5, align 8, !dbg !2397
  %48 = getelementptr [129 x i8], [129 x i8]* %4, i64 0, i64 %47, !dbg !2397
  store i8 45, i8* %48, align 1, !dbg !2397
  br label %if.done, !dbg !2397

if.done:                                          ; preds = %if.then, %for.done
  %49 = load i64, i64* %5, align 8, !dbg !2376
  %50 = load [129 x i8], [129 x i8]* %4, align 1, !dbg !2376
  %51 = getelementptr [129 x i8], [129 x i8]* %4, i64 0, i64 0, !dbg !2376
  %52 = getelementptr i8, i8* %51, i64 %49, !dbg !2376
  %53 = sub i64 129, %49, !dbg !2376
  %54 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0, !dbg !2376
  store i8* %52, i8** %54, align 8, !dbg !2376
  %55 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1, !dbg !2376
  store i64 %53, i64* %55, align 8, !dbg !2376
  %56 = load { i8*, i64 }, { i8*, i64 }* %6, align 8, !dbg !2376
  %57 = call { i64, i64 } @runtime.os_write({ i8*, i64 } %56), !dbg !2376
  ret void, !dbg !2398
}

define internal void @runtime.print_caller_location(%runtime.Source_Code_Location* byval align 8 %0) !dbg !2399 {
decls:
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %0, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %entry, !dbg !2404

entry:                                            ; preds = %decls
  %1 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %0, i32 0, i32 0, !dbg !2405
  call void @llvm.dbg.declare(metadata %..string* %1, metadata !2407, metadata !DIExpression()), !dbg !2408
  %2 = load %..string, %..string* %1, align 8, !dbg !2405
  %3 = call i64 @runtime.print_string(%..string %2), !dbg !2405
  %4 = call i64 @runtime.print_byte(i8 40), !dbg !2409
  %5 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %0, i32 0, i32 1, !dbg !2410
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2411, metadata !DIExpression()), !dbg !2408
  %6 = load i32, i32* %5, align 4, !dbg !2410
  %7 = sext i32 %6 to i64, !dbg !2410
  call void @runtime.print_u64(i64 %7), !dbg !2410
  %8 = call i64 @runtime.print_byte(i8 58), !dbg !2412
  %9 = getelementptr inbounds %runtime.Source_Code_Location, %runtime.Source_Code_Location* %0, i32 0, i32 2, !dbg !2413
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2414, metadata !DIExpression()), !dbg !2408
  %10 = load i32, i32* %9, align 4, !dbg !2413
  %11 = sext i32 %10 to i64, !dbg !2413
  call void @runtime.print_u64(i64 %11), !dbg !2413
  %12 = call i64 @runtime.print_byte(i8 41), !dbg !2415
  ret void, !dbg !2416
}

define internal void @strings.clone({ %..string, i8 }* noalias sret %agg.result, %..string %0, { i64, i64 } %1, %runtime.Source_Code_Location* byval align 8 %2, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2417 {
decls:
  %3 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !2424, metadata !DIExpression()), !dbg !2425
  %4 = alloca %runtime.Allocator, align 8
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %2, metadata !2426, metadata !DIExpression()), !dbg !2427
  %5 = alloca %..string, align 8
  %6 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2428, metadata !DIExpression()), !dbg !2429
  %7 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !2430
  %8 = alloca { i8*, i64 }, align 8, !dbg !2430
  %9 = alloca { i8*, i64 }, align 8, !dbg !2432
  br label %entry, !dbg !2429

entry:                                            ; preds = %decls
  store %..string %0, %..string* %3, align 8
  %10 = bitcast %runtime.Allocator* %4 to { i64, i64 }*
  store { i64, i64 } %1, { i64, i64 }* %10, align 8
  %11 = load %runtime.Allocator, %runtime.Allocator* %4, align 8
  call void @llvm.dbg.value(metadata %runtime.Allocator* %4, metadata !2433, metadata !DIExpression()), !dbg !2434
  %12 = getelementptr inbounds { %..string, i8 }, { %..string, i8 }* %agg.result, i32 0, i32 0
  call void @llvm.dbg.declare(metadata %..string* %5, metadata !2435, metadata !DIExpression()), !dbg !2436
  %13 = bitcast %..string* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds { %..string, i8 }, { %..string, i8 }* %agg.result, i32 0, i32 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2437, metadata !DIExpression()), !dbg !2438
  store i8 0, i8* %6, align 1
  %15 = bitcast i8* %__.context_ptr to %runtime.Context*
  %16 = extractvalue %..string %0, 1, !dbg !2430
  %17 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %2, align 8, !dbg !2430
  %18 = bitcast %runtime.Allocator* %4 to { i64, i64 }*, !dbg !2430
  %19 = load { i64, i64 }, { i64, i64 }* %18, align 8, !dbg !2430
  %20 = bitcast { { i8*, i64 }, i8 }* %7 to i8*, !dbg !2430
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 24, i1 false), !dbg !2430
  %21 = bitcast %runtime.Context* %15 to i8*, !dbg !2430
  call void @runtime.make_slice-11548({ { i8*, i64 }, i8 }* sret %7, i64 %16, { i64, i64 } %19, %runtime.Source_Code_Location* byval %2, i8* %21), !dbg !2430
  %22 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, align 8, !dbg !2430
  %23 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 0, !dbg !2430
  %24 = load { i8*, i64 }, { i8*, i64 }* %23, align 8, !dbg !2430
  %25 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 1, !dbg !2430
  %26 = load i8, i8* %25, align 1, !dbg !2430
  %27 = icmp eq i8 %26, 0, !dbg !2430
  br i1 %27, label %or_return.continue, label %or_return.return, !dbg !2430

or_return.return:                                 ; preds = %entry
  store i8 %26, i8* %6, align 1, !dbg !2430
  %28 = load %..string, %..string* %5, align 8, !dbg !2430
  %29 = load i8, i8* %6, align 1, !dbg !2430
  store %..string %28, %..string* %5, align 8, !dbg !2430
  store i8 %29, i8* %6, align 1, !dbg !2430
  %30 = getelementptr inbounds { %..string, i8 }, { %..string, i8 }* %agg.result, i32 0, i32 0, !dbg !2430
  %31 = getelementptr inbounds { %..string, i8 }, { %..string, i8 }* %agg.result, i32 0, i32 1, !dbg !2430
  store %..string %28, %..string* %30, align 8, !dbg !2430
  store i8 %29, i8* %31, align 1, !dbg !2430
  ret void, !dbg !2430

or_return.continue:                               ; preds = %entry
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %8, metadata !2439, metadata !DIExpression()), !dbg !2430
  store { i8*, i64 } %24, { i8*, i64 }* %8, align 8, !dbg !2430
  %32 = load { i8*, i64 }, { i8*, i64 }* %8, align 8, !dbg !2440
  %33 = call i64 @runtime.copy_from_string-11468({ i8*, i64 } %32, %..string %0), !dbg !2440
  %34 = extractvalue %..string %0, 1, !dbg !2432
  %35 = load { i8*, i64 }, { i8*, i64 }* %8, align 8, !dbg !2432
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1, !dbg !2432
  %37 = load i64, i64* %36, align 8, !dbg !2432
  call void @runtime.slice_expr_error_hi(%..string { i8* getelementptr inbounds ([53 x i8], [53 x i8]* @"csbs$8d", i64 0, i64 0), i64 52 }, i32 26, i32 17, i64 %34, i64 %37), !dbg !2432
  %38 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0, !dbg !2432
  %39 = load i8*, i8** %38, align 8, !dbg !2432
  %40 = getelementptr i8, i8* %39, i64 0, !dbg !2432
  %41 = sub i64 %34, 0, !dbg !2432
  %42 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %9, i32 0, i32 0, !dbg !2432
  store i8* %40, i8** %42, align 8, !dbg !2432
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %9, i32 0, i32 1, !dbg !2432
  store i64 %41, i64* %43, align 8, !dbg !2432
  %44 = load { i8*, i64 }, { i8*, i64 }* %9, align 8, !dbg !2432
  %45 = bitcast { i8*, i64 }* %9 to %..string*, !dbg !2432
  %46 = load %..string, %..string* %45, align 8, !dbg !2432
  store %..string %46, %..string* %5, align 8, !dbg !2432
  store i8 0, i8* %6, align 1, !dbg !2432
  %47 = getelementptr inbounds { %..string, i8 }, { %..string, i8 }* %agg.result, i32 0, i32 0, !dbg !2432
  %48 = getelementptr inbounds { %..string, i8 }, { %..string, i8 }* %agg.result, i32 0, i32 1, !dbg !2432
  store %..string %46, %..string* %47, align 8, !dbg !2432
  store i8 0, i8* %48, align 1, !dbg !2432
  ret void, !dbg !2432
}

define internal void @runtime.default_logger_proc(i8* %0, i64 %1, %..string %2, i16 %3, %runtime.Source_Code_Location* byval align 8 %4, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2441 {
decls:
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2442, metadata !DIExpression()), !dbg !2443
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2444, metadata !DIExpression()), !dbg !2445
  %7 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %2, metadata !2446, metadata !DIExpression()), !dbg !2447
  %8 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i16 %3, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %4, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2452, metadata !DIExpression()), !dbg !2453
  br label %entry, !dbg !2453

entry:                                            ; preds = %decls
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %..string %2, %..string* %7, align 8
  store i16 %3, i16* %8, align 2
  %9 = bitcast i8* %__.context_ptr to %runtime.Context*
  ret void, !dbg !2454
}

define internal void @runtime.default_context(%runtime.Context* noalias sret %agg.result) !dbg !2455 {
decls:
  %0 = alloca %runtime.Context, align 8, !dbg !2458
  br label %entry, !dbg !2460

entry:                                            ; preds = %decls
  call void @llvm.dbg.declare(metadata %runtime.Context* %0, metadata !2461, metadata !DIExpression()), !dbg !2458
  %1 = bitcast %runtime.Context* %0 to i8*, !dbg !2458
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 96, i1 false), !dbg !2458
  call void @runtime.__init_context-862(%runtime.Context* %0), !dbg !2462
  %2 = load %runtime.Context, %runtime.Context* %0, align 8, !dbg !2463
  %3 = bitcast %runtime.Context* %agg.result to i8*, !dbg !2463
  %4 = bitcast %runtime.Context* %0 to i8*, !dbg !2463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 96, i1 false), !dbg !2463
  ret void, !dbg !2463
}

define internal void @runtime.__init_context-862(%runtime.Context* %0) !dbg !2464 {
decls:
  %1 = alloca %runtime.Context*, align 8
  call void @llvm.dbg.value(metadata %runtime.Context* %0, metadata !2468, metadata !DIExpression()), !dbg !2469
  br label %entry, !dbg !2470

entry:                                            ; preds = %decls
  store %runtime.Context* %0, %runtime.Context** %1, align 8
  %2 = icmp eq %runtime.Context* %0, null, !dbg !2471
  %3 = zext i1 %2 to i8, !dbg !2471
  %4 = icmp ne i8 %3, 0, !dbg !2471
  br i1 %4, label %if.then, label %if.done, !dbg !2471

if.then:                                          ; preds = %entry
  ret void, !dbg !2473

if.done:                                          ; preds = %entry
  %5 = load %runtime.Context*, %runtime.Context** %1, align 8, !dbg !2476
  %6 = getelementptr inbounds %runtime.Context, %runtime.Context* %5, i32 0, i32 0, !dbg !2476
  %7 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %6, i32 0, i32 0, !dbg !2476
  store i8* bitcast (void ({ { i8*, i64 }, i8 }*, i8*, i8, i64, i64, i8*, i64, %runtime.Source_Code_Location*, i8*)* @os.heap_allocator_proc to i8*), i8** %7, align 8, !dbg !2476
  %8 = load %runtime.Context*, %runtime.Context** %1, align 8, !dbg !2477
  %9 = getelementptr inbounds %runtime.Context, %runtime.Context* %8, i32 0, i32 0, !dbg !2477
  %10 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %9, i32 0, i32 1, !dbg !2477
  store i8* null, i8** %10, align 8, !dbg !2477
  %11 = load %runtime.Context*, %runtime.Context** %1, align 8, !dbg !2478
  %12 = getelementptr inbounds %runtime.Context, %runtime.Context* %11, i32 0, i32 1, !dbg !2478
  %13 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %12, i32 0, i32 0, !dbg !2478
  store i8* bitcast (void ({ { i8*, i64 }, i8 }*, i8*, i8, i64, i64, i8*, i64, %runtime.Source_Code_Location*, i8*)* @runtime.default_temp_allocator_proc to i8*), i8** %13, align 8, !dbg !2478
  %14 = load %runtime.Context*, %runtime.Context** %1, align 8, !dbg !2479
  %15 = getelementptr inbounds %runtime.Context, %runtime.Context* %14, i32 0, i32 1, !dbg !2479
  %16 = getelementptr inbounds %runtime.Allocator, %runtime.Allocator* %15, i32 0, i32 1, !dbg !2479
  store i8* bitcast (%runtime.Default_Temp_Allocator* @runtime.global_default_temp_allocator_data to i8*), i8** %16, align 8, !dbg !2479
  %17 = load %runtime.Context*, %runtime.Context** %1, align 8, !dbg !2480
  %18 = getelementptr inbounds %runtime.Context, %runtime.Context* %17, i32 0, i32 2, !dbg !2480
  store i8* bitcast (void (%..string, %..string, %runtime.Source_Code_Location*, i8*)* @runtime.default_assertion_failure_proc to i8*), i8** %18, align 8, !dbg !2480
  %19 = load %runtime.Context*, %runtime.Context** %1, align 8, !dbg !2481
  %20 = getelementptr inbounds %runtime.Context, %runtime.Context* %19, i32 0, i32 3, !dbg !2481
  %21 = getelementptr inbounds %runtime.Logger, %runtime.Logger* %20, i32 0, i32 0, !dbg !2481
  store i8* bitcast (void (i8*, i64, %..string, i16, %runtime.Source_Code_Location*, i8*)* @runtime.default_logger_proc to i8*), i8** %21, align 8, !dbg !2481
  %22 = load %runtime.Context*, %runtime.Context** %1, align 8, !dbg !2482
  %23 = getelementptr inbounds %runtime.Context, %runtime.Context* %22, i32 0, i32 3, !dbg !2482
  %24 = getelementptr inbounds %runtime.Logger, %runtime.Logger* %23, i32 0, i32 1, !dbg !2482
  store i8* null, i8** %24, align 8, !dbg !2482
  ret void, !dbg !2483
}

; Function Attrs: noreturn
define internal void @runtime.default_assertion_failure_proc(%..string %0, %..string %1, %runtime.Source_Code_Location* byval align 8 %2, i8* noalias nocapture nonnull %__.context_ptr) #5 !dbg !2484 {
decls:
  %3 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !2485, metadata !DIExpression()), !dbg !2486
  %4 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %1, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %2, metadata !2489, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2491, metadata !DIExpression()), !dbg !2492
  br label %entry, !dbg !2492

entry:                                            ; preds = %decls
  store %..string %0, %..string* %3, align 8
  store %..string %1, %..string* %4, align 8
  %5 = bitcast i8* %__.context_ptr to %runtime.Context*
  %6 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %2, align 8, !dbg !2493
  call void @runtime.print_caller_location(%runtime.Source_Code_Location* byval %2), !dbg !2493
  %7 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"csbs$8e", i64 0, i64 0), i64 1 }), !dbg !2495
  %8 = call i64 @runtime.print_string(%..string %0), !dbg !2496
  %9 = extractvalue %..string %1, 1, !dbg !2497
  %10 = icmp sgt i64 %9, 0, !dbg !2497
  %11 = zext i1 %10 to i8, !dbg !2497
  %12 = icmp ne i8 %11, 0, !dbg !2497
  br i1 %12, label %if.then, label %if.done, !dbg !2497

if.then:                                          ; preds = %entry
  %13 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"csbs$8f", i64 0, i64 0), i64 2 }), !dbg !2498
  %14 = call i64 @runtime.print_string(%..string %1), !dbg !2501
  br label %if.done, !dbg !2501

if.done:                                          ; preds = %if.then, %entry
  %15 = call i64 @runtime.print_byte(i8 10), !dbg !2502
  call void @llvm.trap(), !dbg !2503
  unreachable, !dbg !2503
}

define internal void @os.heap_allocator_proc({ { i8*, i64 }, i8 }* noalias sret %agg.result, i8* %0, i8 %1, i64 %2, i64 %3, i8* %4, i64 %5, %runtime.Source_Code_Location* byval align 8 %6, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2504 {
decls:
  %7 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()), !dbg !2507
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8 %1, metadata !2508, metadata !DIExpression()), !dbg !2509
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %2, metadata !2510, metadata !DIExpression()), !dbg !2511
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !2512, metadata !DIExpression()), !dbg !2513
  %11 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %4, metadata !2514, metadata !DIExpression()), !dbg !2515
  %12 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %5, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %6, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2520, metadata !DIExpression()), !dbg !2521
  %13 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !2522
  %14 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !2525
  %15 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !2528
  %16 = alloca i8*, align 8, !dbg !2529
  br label %entry, !dbg !2521

entry:                                            ; preds = %decls
  store i8* %0, i8** %7, align 8
  store i8 %1, i8* %8, align 1
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = bitcast i8* %__.context_ptr to %runtime.Context*
  switch i8 %1, label %switch.done [
    i8 0, label %switch.case.body
    i8 6, label %switch.case.body
    i8 1, label %switch.case.body1
    i8 2, label %switch.case.body2
    i8 3, label %switch.case.body3
    i8 4, label %switch.case.body4
    i8 5, label %switch.case.body7
  ], !dbg !2530

switch.case.body:                                 ; preds = %entry, %entry
  %18 = icmp eq i8 %1, 0, !dbg !2522
  %19 = zext i1 %18 to i8, !dbg !2522
  %20 = icmp ne i8 %19, 0, !dbg !2522
  %21 = bitcast { { i8*, i64 }, i8 }* %13 to i8*, !dbg !2522
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 24, i1 false), !dbg !2522
  %22 = bitcast %runtime.Context* %17 to i8*, !dbg !2522
  call void @os.heap_allocator_proc.aligned_alloc-0({ { i8*, i64 }, i8 }* sret %13, i64 %2, i64 %3, i8* null, i1 zeroext %20, i8* %22), !dbg !2522
  %23 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %13, align 8, !dbg !2522
  %24 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %13, i32 0, i32 0, !dbg !2522
  %25 = load { i8*, i64 }, { i8*, i64 }* %24, align 8, !dbg !2522
  %26 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %13, i32 0, i32 1, !dbg !2522
  %27 = load i8, i8* %26, align 1, !dbg !2522
  %28 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2522
  %29 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2522
  store { i8*, i64 } %25, { i8*, i64 }* %28, align 8, !dbg !2522
  store i8 %27, i8* %29, align 1, !dbg !2522
  ret void, !dbg !2522

switch.case.body1:                                ; preds = %entry
  %30 = bitcast %runtime.Context* %17 to i8*, !dbg !2531
  call void @os.heap_allocator_proc.aligned_free-1(i8* %4, i8* %30), !dbg !2531
  br label %switch.done, !dbg !2531

switch.case.body2:                                ; preds = %entry
  %31 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2532
  %32 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2532
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %31, align 8, !dbg !2532
  store i8 4, i8* %32, align 1, !dbg !2532
  ret void, !dbg !2532

switch.case.body3:                                ; preds = %entry
  %33 = icmp eq i8* %4, null, !dbg !2533
  %34 = zext i1 %33 to i8, !dbg !2533
  %35 = icmp ne i8 %34, 0, !dbg !2533
  br i1 %35, label %if.then, label %if.done, !dbg !2533

if.then:                                          ; preds = %switch.case.body3
  %36 = bitcast { { i8*, i64 }, i8 }* %14 to i8*, !dbg !2525
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 24, i1 false), !dbg !2525
  %37 = bitcast %runtime.Context* %17 to i8*, !dbg !2525
  call void @os.heap_allocator_proc.aligned_alloc-0({ { i8*, i64 }, i8 }* sret %14, i64 %2, i64 %3, i8* null, i1 zeroext true, i8* %37), !dbg !2525
  %38 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %14, align 8, !dbg !2525
  %39 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %14, i32 0, i32 0, !dbg !2525
  %40 = load { i8*, i64 }, { i8*, i64 }* %39, align 8, !dbg !2525
  %41 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %14, i32 0, i32 1, !dbg !2525
  %42 = load i8, i8* %41, align 1, !dbg !2525
  %43 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2525
  %44 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2525
  store { i8*, i64 } %40, { i8*, i64 }* %43, align 8, !dbg !2525
  store i8 %42, i8* %44, align 1, !dbg !2525
  ret void, !dbg !2525

if.done:                                          ; preds = %switch.case.body3
  %45 = bitcast { { i8*, i64 }, i8 }* %15 to i8*, !dbg !2528
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 24, i1 false), !dbg !2528
  %46 = bitcast %runtime.Context* %17 to i8*, !dbg !2528
  call void @os.heap_allocator_proc.aligned_resize-2({ { i8*, i64 }, i8 }* sret %15, i8* %4, i64 %5, i64 %2, i64 %3, i8* %46), !dbg !2528
  %47 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %15, align 8, !dbg !2528
  %48 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %15, i32 0, i32 0, !dbg !2528
  %49 = load { i8*, i64 }, { i8*, i64 }* %48, align 8, !dbg !2528
  %50 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %15, i32 0, i32 1, !dbg !2528
  %51 = load i8, i8* %50, align 1, !dbg !2528
  %52 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2528
  %53 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2528
  store { i8*, i64 } %49, { i8*, i64 }* %52, align 8, !dbg !2528
  store i8 %51, i8* %53, align 1, !dbg !2528
  ret void, !dbg !2528

switch.case.body4:                                ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2534, metadata !DIExpression()), !dbg !2529
  store i8* %4, i8** %16, align 8, !dbg !2529
  %54 = load i8*, i8** %16, align 8, !dbg !2535
  %55 = icmp ne i8* %54, null, !dbg !2535
  %56 = zext i1 %55 to i8, !dbg !2535
  %57 = icmp ne i8 %56, 0, !dbg !2535
  br i1 %57, label %if.then5, label %if.done6, !dbg !2535

if.then5:                                         ; preds = %switch.case.body4
  %58 = load i8*, i8** %16, align 8, !dbg !2536
  store i8 91, i8* %58, align 1, !dbg !2536
  br label %if.done6, !dbg !2536

if.done6:                                         ; preds = %if.then5, %switch.case.body4
  %59 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2539
  %60 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2539
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %59, align 8, !dbg !2539
  store i8 0, i8* %60, align 1, !dbg !2539
  ret void, !dbg !2539

switch.case.body7:                                ; preds = %entry
  %61 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2540
  %62 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2540
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %61, align 8, !dbg !2540
  store i8 4, i8* %62, align 1, !dbg !2540
  ret void, !dbg !2540

switch.done:                                      ; preds = %switch.case.body1, %entry
  %63 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !2541
  %64 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !2541
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %63, align 8, !dbg !2541
  store i8 0, i8* %64, align 1, !dbg !2541
  ret void, !dbg !2541
}

define internal void @runtime.assert(i1 zeroext %0, %..string %1, %runtime.Source_Code_Location* byval align 8 %2, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2542 {
decls:
  %3 = alloca i8, align 1
  %4 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %1, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %2, metadata !2547, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2549, metadata !DIExpression()), !dbg !2550
  br label %entry, !dbg !2550

entry:                                            ; preds = %decls
  %5 = zext i1 %0 to i8
  store i8 %5, i8* %3, align 1
  call void @llvm.dbg.value(metadata i8 %5, metadata !2551, metadata !DIExpression()), !dbg !2552
  store %..string %1, %..string* %4, align 8
  %6 = bitcast i8* %__.context_ptr to %runtime.Context*
  %7 = icmp ne i8 %5, 0, !dbg !2553
  br i1 %7, label %if.done, label %if.then, !dbg !2553

if.then:                                          ; preds = %entry
  %8 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %2, align 8, !dbg !2555
  %9 = bitcast %runtime.Context* %6 to i8*, !dbg !2555
  call void @runtime.assert.internal-0(%..string %1, %runtime.Source_Code_Location* byval %2, i8* %9), !dbg !2555
  br label %if.done, !dbg !2555

if.done:                                          ; preds = %if.then, %entry
  ret void, !dbg !2558
}

define internal { i64, i64 } @os.heap_allocator(i8* noalias nocapture nonnull %__.context_ptr) !dbg !2559 {
decls:
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2562, metadata !DIExpression()), !dbg !2563
  %0 = alloca { i64, i64 }, align 8, !dbg !2564
  br label %entry, !dbg !2563

entry:                                            ; preds = %decls
  %1 = bitcast i8* %__.context_ptr to %runtime.Context*
  %2 = bitcast { i64, i64 }* %0 to %runtime.Allocator*, !dbg !2564
  store %runtime.Allocator { i8* bitcast (void ({ { i8*, i64 }, i8 }*, i8*, i8, i64, i64, i8*, i64, %runtime.Source_Code_Location*, i8*)* @os.heap_allocator_proc to i8*), i8* null }, %runtime.Allocator* %2, align 8, !dbg !2564
  %3 = load { i64, i64 }, { i64, i64 }* %0, align 8, !dbg !2564
  ret { i64, i64 } %3, !dbg !2564
}

define internal i8* @mem.zero(i8* %0, i64 %1) !dbg !2566 {
decls:
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2570, metadata !DIExpression()), !dbg !2571
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2572, metadata !DIExpression()), !dbg !2573
  br label %entry, !dbg !2574

entry:                                            ; preds = %decls
  store i8* %0, i8** %2, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %1, i1 false), !dbg !2575
  ret i8* %0, !dbg !2577
}

; Function Attrs: alwaysinline
define internal { i8*, i64 } @mem.byte_slice(i8* %0, i64 %1) #4 !dbg !2578 {
decls:
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()), !dbg !2582
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2583, metadata !DIExpression()), !dbg !2584
  %4 = alloca i8*, align 8, !dbg !2585
  %5 = alloca { i8*, i64 }, align 8, !dbg !2585
  br label %entry, !dbg !2587

entry:                                            ; preds = %decls
  store i8* %0, i8** %2, align 8
  store i64 %1, i64* %3, align 8
  %6 = icmp sgt i64 %1, 0, !dbg !2585
  %7 = select i1 %6, i64 %1, i64 0, !dbg !2585
  store i8* %0, i8** %4, align 8, !dbg !2585
  %8 = load i8*, i8** %4, align 8, !dbg !2585
  call void @runtime.multi_pointer_slice_expr_error(%..string { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @"csbs$90", i64 0, i64 0), i64 44 }, i32 128, i32 22, i64 0, i64 %7) #4, !dbg !2585
  %9 = getelementptr i8, i8* %8, i64 0, !dbg !2585
  %10 = sub i64 %7, 0, !dbg !2585
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0, !dbg !2585
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1, !dbg !2585
  store i8* %9, i8** %11, align 8, !dbg !2585
  store i64 %10, i64* %12, align 8, !dbg !2585
  %13 = load { i8*, i64 }, { i8*, i64 }* %5, align 8, !dbg !2585
  ret { i8*, i64 } %13, !dbg !2585
}

; Function Attrs: noinline
define dso_local i16 @__truncsfhf2(float %0) #6 !dbg !2588 {
decls:
  %1 = alloca float, align 4
  call void @llvm.dbg.value(metadata float %0, metadata !2595, metadata !DIExpression()), !dbg !2596
  %2 = alloca { i32 }, align 4, !dbg !2597
  %3 = alloca i32, align 4, !dbg !2599
  %4 = alloca i32, align 4, !dbg !2599
  %5 = alloca i32, align 4, !dbg !2599
  %6 = alloca i32, align 4, !dbg !2599
  %7 = alloca i64, align 8, !dbg !2600
  %8 = alloca i64, align 8, !dbg !2606
  %9 = alloca i64, align 8, !dbg !2608
  br label %entry, !dbg !2610

entry:                                            ; preds = %decls
  store float %0, float* %1, align 4
  call void @llvm.dbg.declare(metadata { i32 }* %2, metadata !2611, metadata !DIExpression()), !dbg !2597
  %10 = bitcast { i32 }* %2 to i8*, !dbg !2597
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 4, i1 false), !dbg !2597
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2616, metadata !DIExpression()), !dbg !2599
  store i32 0, i32* %3, align 4, !dbg !2599
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2617, metadata !DIExpression()), !dbg !2618
  store i32 0, i32* %4, align 4, !dbg !2599
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2619, metadata !DIExpression()), !dbg !2620
  store i32 0, i32* %5, align 4, !dbg !2599
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2621, metadata !DIExpression()), !dbg !2622
  store i32 0, i32* %6, align 4, !dbg !2599
  %11 = bitcast { i32 }* %2 to float*, !dbg !2623
  store float %0, float* %11, align 4, !dbg !2623
  %12 = bitcast { i32 }* %2 to i32*, !dbg !2624
  %13 = load i32, i32* %12, align 4, !dbg !2624
  store i32 %13, i32* %3, align 4, !dbg !2624
  %14 = load i32, i32* %3, align 4, !dbg !2625
  %15 = ashr i32 %14, 16, !dbg !2625
  %16 = select i1 true, i32 %15, i32 0, !dbg !2625
  %17 = and i32 %16, 32768, !dbg !2625
  store i32 %17, i32* %4, align 4, !dbg !2625
  %18 = load i32, i32* %3, align 4, !dbg !2626
  %19 = ashr i32 %18, 23, !dbg !2626
  %20 = select i1 true, i32 %19, i32 0, !dbg !2626
  %21 = and i32 %20, 255, !dbg !2626
  %22 = sub i32 %21, 112, !dbg !2626
  store i32 %22, i32* %5, align 4, !dbg !2626
  %23 = load i32, i32* %3, align 4, !dbg !2627
  %24 = and i32 %23, 8388607, !dbg !2627
  store i32 %24, i32* %6, align 4, !dbg !2627
  %25 = load i32, i32* %5, align 4, !dbg !2628
  %26 = icmp sle i32 %25, 0, !dbg !2628
  %27 = zext i1 %26 to i8, !dbg !2628
  %28 = icmp ne i8 %27, 0, !dbg !2628
  br i1 %28, label %if.then, label %if.else, !dbg !2628

if.then:                                          ; preds = %entry
  %29 = load i32, i32* %5, align 4, !dbg !2629
  %30 = icmp slt i32 %29, -10, !dbg !2629
  %31 = zext i1 %30 to i8, !dbg !2629
  %32 = icmp ne i8 %31, 0, !dbg !2629
  br i1 %32, label %if.then1, label %if.done, !dbg !2629

if.then1:                                         ; preds = %if.then
  %33 = load i32, i32* %4, align 4, !dbg !2631
  %34 = trunc i32 %33 to i16, !dbg !2631
  ret i16 %34, !dbg !2631

if.done:                                          ; preds = %if.then
  %35 = load i32, i32* %6, align 4, !dbg !2634
  %36 = or i32 %35, 8388608, !dbg !2634
  %37 = load i32, i32* %5, align 4, !dbg !2634
  %38 = sub i32 1, %37, !dbg !2634
  %39 = icmp ult i32 %38, 32, !dbg !2634
  %40 = ashr i32 %36, %38, !dbg !2634
  %41 = select i1 %39, i32 %40, i32 0, !dbg !2634
  store i32 %41, i32* %6, align 4, !dbg !2634
  %42 = load i32, i32* %6, align 4, !dbg !2635
  %43 = and i32 %42, 4096, !dbg !2635
  %44 = icmp ne i32 %43, 0, !dbg !2635
  %45 = zext i1 %44 to i8, !dbg !2635
  %46 = icmp ne i8 %45, 0, !dbg !2635
  br i1 %46, label %if.then2, label %if.done3, !dbg !2635

if.then2:                                         ; preds = %if.done
  %47 = load i32, i32* %6, align 4, !dbg !2636
  %48 = add i32 %47, 8192, !dbg !2636
  store i32 %48, i32* %6, align 4, !dbg !2636
  br label %if.done3, !dbg !2636

if.done3:                                         ; preds = %if.then2, %if.done
  %49 = load i32, i32* %4, align 4, !dbg !2639
  %50 = load i32, i32* %6, align 4, !dbg !2639
  %51 = ashr i32 %50, 13, !dbg !2639
  %52 = select i1 true, i32 %51, i32 0, !dbg !2639
  %53 = or i32 %49, %52, !dbg !2639
  %54 = trunc i32 %53 to i16, !dbg !2639
  ret i16 %54, !dbg !2639

if.else:                                          ; preds = %entry
  %55 = load i32, i32* %5, align 4, !dbg !2640
  %56 = icmp eq i32 %55, 143, !dbg !2640
  %57 = zext i1 %56 to i8, !dbg !2640
  %58 = icmp ne i8 %57, 0, !dbg !2640
  br i1 %58, label %if.then4, label %if.else8, !dbg !2640

if.then4:                                         ; preds = %if.else
  %59 = load i32, i32* %6, align 4, !dbg !2641
  %60 = icmp eq i32 %59, 0, !dbg !2641
  %61 = zext i1 %60 to i8, !dbg !2641
  %62 = icmp ne i8 %61, 0, !dbg !2641
  br i1 %62, label %if.then5, label %if.else6, !dbg !2641

if.then5:                                         ; preds = %if.then4
  %63 = load i32, i32* %4, align 4, !dbg !2643
  %64 = or i32 %63, 31744, !dbg !2643
  %65 = trunc i32 %64 to i16, !dbg !2643
  ret i16 %65, !dbg !2643

if.else6:                                         ; preds = %if.then4
  %66 = load i32, i32* %6, align 4, !dbg !2646
  %67 = ashr i32 %66, 13, !dbg !2646
  %68 = select i1 true, i32 %67, i32 0, !dbg !2646
  store i32 %68, i32* %6, align 4, !dbg !2646
  %69 = load i32, i32* %4, align 4, !dbg !2648
  %70 = or i32 %69, 31744, !dbg !2648
  %71 = load i32, i32* %6, align 4, !dbg !2648
  %72 = or i32 %70, %71, !dbg !2648
  %73 = load i32, i32* %6, align 4, !dbg !2648
  %74 = icmp eq i32 %73, 0, !dbg !2648
  %75 = icmp ne i1 %74, false, !dbg !2648
  %76 = zext i1 %75 to i32, !dbg !2648
  %77 = or i32 %72, %76, !dbg !2648
  %78 = trunc i32 %77 to i16, !dbg !2648
  ret i16 %78, !dbg !2648

if.done7:                                         ; No predecessors!
  br label %if.done15, !dbg !2648

if.else8:                                         ; preds = %if.else
  %79 = load i32, i32* %6, align 4, !dbg !2649
  %80 = and i32 %79, 4096, !dbg !2649
  %81 = icmp ne i32 %80, 0, !dbg !2649
  %82 = zext i1 %81 to i8, !dbg !2649
  %83 = icmp ne i8 %82, 0, !dbg !2649
  br i1 %83, label %if.then9, label %if.done12, !dbg !2649

if.then9:                                         ; preds = %if.else8
  %84 = load i32, i32* %6, align 4, !dbg !2650
  %85 = add i32 %84, 8192, !dbg !2650
  store i32 %85, i32* %6, align 4, !dbg !2650
  %86 = load i32, i32* %6, align 4, !dbg !2653
  %87 = and i32 %86, 8388608, !dbg !2653
  %88 = icmp ne i32 %87, 0, !dbg !2653
  %89 = zext i1 %88 to i8, !dbg !2653
  %90 = icmp ne i8 %89, 0, !dbg !2653
  br i1 %90, label %if.then10, label %if.done11, !dbg !2653

if.then10:                                        ; preds = %if.then9
  store i32 0, i32* %6, align 4, !dbg !2654
  %91 = load i32, i32* %5, align 4, !dbg !2657
  %92 = add i32 %91, 1, !dbg !2657
  store i32 %92, i32* %5, align 4, !dbg !2657
  br label %if.done11, !dbg !2657

if.done11:                                        ; preds = %if.then10, %if.then9
  br label %if.done12, !dbg !2657

if.done12:                                        ; preds = %if.done11, %if.else8
  %93 = load i32, i32* %5, align 4, !dbg !2658
  %94 = icmp sgt i32 %93, 30, !dbg !2658
  %95 = zext i1 %94 to i8, !dbg !2658
  %96 = icmp ne i8 %95, 0, !dbg !2658
  br i1 %96, label %if.then13, label %if.done14, !dbg !2658

if.then13:                                        ; preds = %if.done12
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2659, metadata !DIExpression()), !dbg !2600
  store i64 1000000000000, i64* %7, align 8, !dbg !2600
  br label %for.init, !dbg !2660

for.init:                                         ; preds = %if.then13
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2661, metadata !DIExpression()), !dbg !2606
  store i64 0, i64* %8, align 8, !dbg !2606
  br label %for.loop, !dbg !2606

for.loop:                                         ; preds = %for.post, %for.init
  %97 = load i64, i64* %8, align 8, !dbg !2662
  %98 = icmp slt i64 %97, 10, !dbg !2662
  %99 = zext i1 %98 to i8, !dbg !2662
  %100 = icmp ne i8 %99, 0, !dbg !2662
  br i1 %100, label %for.body, label %for.done, !dbg !2662

for.body:                                         ; preds = %for.loop
  %101 = load volatile i64, i64* %7, align 8, !dbg !2608
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2663, metadata !DIExpression()), !dbg !2608
  store i64 %101, i64* %9, align 8, !dbg !2608
  %102 = load i64, i64* %9, align 8, !dbg !2664
  %103 = load i64, i64* %9, align 8, !dbg !2664
  %104 = mul i64 %103, %102, !dbg !2664
  store i64 %104, i64* %9, align 8, !dbg !2664
  %105 = load i64, i64* %9, align 8, !dbg !2665
  store volatile i64 %105, i64* %7, align 8, !dbg !2665
  br label %for.post, !dbg !2666

for.post:                                         ; preds = %for.body
  %106 = load i64, i64* %8, align 8, !dbg !2667
  %107 = add i64 %106, 1, !dbg !2667
  store i64 %107, i64* %8, align 8, !dbg !2667
  br label %for.loop, !dbg !2667

for.done:                                         ; preds = %for.loop
  %108 = load i32, i32* %4, align 4, !dbg !2668
  %109 = or i32 %108, 31744, !dbg !2668
  %110 = trunc i32 %109 to i16, !dbg !2668
  ret i16 %110, !dbg !2668

if.done14:                                        ; preds = %if.done12
  %111 = load i32, i32* %4, align 4, !dbg !2669
  %112 = load i32, i32* %5, align 4, !dbg !2669
  %113 = shl i32 %112, 10, !dbg !2669
  %114 = select i1 true, i32 %113, i32 0, !dbg !2669
  %115 = or i32 %111, %114, !dbg !2669
  %116 = load i32, i32* %6, align 4, !dbg !2669
  %117 = ashr i32 %116, 13, !dbg !2669
  %118 = select i1 true, i32 %117, i32 0, !dbg !2669
  %119 = or i32 %115, %118, !dbg !2669
  %120 = trunc i32 %119 to i16, !dbg !2669
  ret i16 %120, !dbg !2669

if.done15:                                        ; preds = %if.done7
  br label %if.done16, !dbg !2669

if.done16:                                        ; preds = %if.done15
  unreachable, !dbg !2610
}

; Function Attrs: noinline
define dso_local i16 @__truncdfhf2(double %0) #6 !dbg !2670 {
decls:
  %1 = alloca double, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !2675, metadata !DIExpression()), !dbg !2676
  br label %entry, !dbg !2677

entry:                                            ; preds = %decls
  store double %0, double* %1, align 8
  %2 = fptrunc double %0 to float, !dbg !2678
  %3 = call i16 @__truncsfhf2(float %2) #6, !dbg !2678
  ret i16 %3, !dbg !2678
}

; Function Attrs: noinline
define dso_local float @__gnu_h2f_ieee(i16 %0) #6 !dbg !2680 {
decls:
  %1 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i16 %0, metadata !2683, metadata !DIExpression()), !dbg !2684
  %2 = alloca %__gnu_h2f_ieee.fp32-1, align 4, !dbg !2685
  %3 = alloca %__gnu_h2f_ieee.fp32-1, align 4, !dbg !2687
  %4 = alloca %__gnu_h2f_ieee.fp32-1, align 4, !dbg !2687
  br label %entry, !dbg !2688

entry:                                            ; preds = %decls
  store i16 %0, i16* %1, align 2
  call void @llvm.dbg.declare(metadata %__gnu_h2f_ieee.fp32-1* %2, metadata !2689, metadata !DIExpression()), !dbg !2685
  %5 = bitcast %__gnu_h2f_ieee.fp32-1* %2 to i8*, !dbg !2685
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 4, i1 false), !dbg !2685
  call void @llvm.dbg.declare(metadata %__gnu_h2f_ieee.fp32-1* %3, metadata !2693, metadata !DIExpression()), !dbg !2687
  %6 = bitcast %__gnu_h2f_ieee.fp32-1* %3 to i8*, !dbg !2687
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 4, i1 false), !dbg !2687
  call void @llvm.dbg.declare(metadata %__gnu_h2f_ieee.fp32-1* %4, metadata !2694, metadata !DIExpression()), !dbg !2695
  %7 = bitcast %__gnu_h2f_ieee.fp32-1* %4 to i8*, !dbg !2687
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 4, i1 false), !dbg !2687
  %8 = bitcast %__gnu_h2f_ieee.fp32-1* %3 to i32*, !dbg !2696
  store i32 2004877312, i32* %8, align 4, !dbg !2696
  %9 = bitcast %__gnu_h2f_ieee.fp32-1* %4 to i32*, !dbg !2697
  store i32 1199570944, i32* %9, align 4, !dbg !2697
  %10 = bitcast %__gnu_h2f_ieee.fp32-1* %2 to i32*, !dbg !2698
  %11 = and i16 %0, 32767, !dbg !2698
  %12 = zext i16 %11 to i32, !dbg !2698
  %13 = shl i32 %12, 13, !dbg !2698
  %14 = select i1 true, i32 %13, i32 0, !dbg !2698
  store i32 %14, i32* %10, align 4, !dbg !2698
  %15 = bitcast %__gnu_h2f_ieee.fp32-1* %2 to float*, !dbg !2699
  %16 = bitcast %__gnu_h2f_ieee.fp32-1* %3 to float*, !dbg !2699
  %17 = load float, float* %16, align 4, !dbg !2699
  %18 = load float, float* %15, align 4, !dbg !2699
  %19 = fmul float %18, %17, !dbg !2699
  store float %19, float* %15, align 4, !dbg !2699
  %20 = bitcast %__gnu_h2f_ieee.fp32-1* %2 to float*, !dbg !2700
  %21 = load float, float* %20, align 4, !dbg !2700
  %22 = bitcast %__gnu_h2f_ieee.fp32-1* %4 to float*, !dbg !2700
  %23 = load float, float* %22, align 4, !dbg !2700
  %24 = fcmp oge float %21, %23, !dbg !2700
  %25 = zext i1 %24 to i8, !dbg !2700
  %26 = icmp ne i8 %25, 0, !dbg !2700
  br i1 %26, label %if.then, label %if.done, !dbg !2700

if.then:                                          ; preds = %entry
  %27 = bitcast %__gnu_h2f_ieee.fp32-1* %2 to i32*, !dbg !2701
  %28 = load i32, i32* %27, align 4, !dbg !2701
  %29 = or i32 %28, 2139095040, !dbg !2701
  store i32 %29, i32* %27, align 4, !dbg !2701
  br label %if.done, !dbg !2701

if.done:                                          ; preds = %if.then, %entry
  %30 = bitcast %__gnu_h2f_ieee.fp32-1* %2 to i32*, !dbg !2704
  %31 = and i16 %0, -32768, !dbg !2704
  %32 = zext i16 %31 to i32, !dbg !2704
  %33 = shl i32 %32, 16, !dbg !2704
  %34 = select i1 true, i32 %33, i32 0, !dbg !2704
  %35 = load i32, i32* %30, align 4, !dbg !2704
  %36 = or i32 %35, %34, !dbg !2704
  store i32 %36, i32* %30, align 4, !dbg !2704
  %37 = bitcast %__gnu_h2f_ieee.fp32-1* %2 to float*, !dbg !2705
  %38 = load float, float* %37, align 4, !dbg !2705
  ret float %38, !dbg !2705
}

; Function Attrs: noinline
define dso_local i16 @__gnu_f2h_ieee(float %0) #6 !dbg !2706 {
decls:
  %1 = alloca float, align 4
  call void @llvm.dbg.value(metadata float %0, metadata !2707, metadata !DIExpression()), !dbg !2708
  br label %entry, !dbg !2709

entry:                                            ; preds = %decls
  store float %0, float* %1, align 4
  %2 = call i16 @__truncsfhf2(float %0) #6, !dbg !2710
  ret i16 %2, !dbg !2710
}

; Function Attrs: noinline
define dso_local float @__extendhfsf2(i16 %0) #6 !dbg !2712 {
decls:
  %1 = alloca i16, align 2
  call void @llvm.dbg.value(metadata i16 %0, metadata !2713, metadata !DIExpression()), !dbg !2714
  br label %entry, !dbg !2715

entry:                                            ; preds = %decls
  store i16 %0, i16* %1, align 2
  %2 = call float @__gnu_h2f_ieee(i16 %0) #6, !dbg !2716
  ret float %2, !dbg !2716
}

; Function Attrs: noinline
define dso_local double @__floattidf(i128 %0) #6 !dbg !2718 {
decls:
  %1 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2721, metadata !DIExpression()), !dbg !2722
  %2 = alloca i128, align 8, !dbg !2723
  %3 = alloca i128, align 8, !dbg !2725
  %4 = alloca i128, align 8, !dbg !2726
  %5 = alloca i32, align 4, !dbg !2727
  %6 = alloca [2 x i32], align 4, !dbg !2728
  br label %entry, !dbg !2729

entry:                                            ; preds = %decls
  store i128 %0, i128* %1, align 8
  %7 = icmp eq i128 %0, 0, !dbg !2730
  %8 = zext i1 %7 to i8, !dbg !2730
  %9 = icmp ne i8 %8, 0, !dbg !2730
  br i1 %9, label %if.then, label %if.done, !dbg !2730

if.then:                                          ; preds = %entry
  ret double 0.000000e+00, !dbg !2731

if.done:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i128* %2, metadata !2734, metadata !DIExpression()), !dbg !2723
  store i128 %0, i128* %2, align 8, !dbg !2723
  %10 = load i128, i128* %2, align 8, !dbg !2725
  %11 = ashr i128 %10, 127, !dbg !2725
  %12 = select i1 true, i128 %11, i128 0, !dbg !2725
  call void @llvm.dbg.declare(metadata i128* %3, metadata !2735, metadata !DIExpression()), !dbg !2725
  store i128 %12, i128* %3, align 8, !dbg !2725
  %13 = load i128, i128* %2, align 8, !dbg !2736
  %14 = load i128, i128* %3, align 8, !dbg !2736
  %15 = xor i128 %13, %14, !dbg !2736
  %16 = load i128, i128* %3, align 8, !dbg !2736
  %17 = sub i128 %15, %16, !dbg !2736
  store i128 %17, i128* %2, align 8, !dbg !2736
  %18 = load i128, i128* %2, align 8, !dbg !2726
  %19 = call i128 @llvm.ctlz.i128(i128 %18, i1 false), !dbg !2726
  %20 = sub i128 128, %19, !dbg !2726
  call void @llvm.dbg.declare(metadata i128* %4, metadata !2737, metadata !DIExpression()), !dbg !2726
  store i128 %20, i128* %4, align 8, !dbg !2726
  %21 = load i128, i128* %4, align 8, !dbg !2727
  %22 = sub i128 %21, 1, !dbg !2727
  %23 = trunc i128 %22 to i32, !dbg !2727
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2738, metadata !DIExpression()), !dbg !2727
  store i32 %23, i32* %5, align 4, !dbg !2727
  %24 = load i128, i128* %4, align 8, !dbg !2739
  %25 = icmp sgt i128 %24, 53, !dbg !2739
  %26 = zext i1 %25 to i8, !dbg !2739
  %27 = icmp ne i8 %26, 0, !dbg !2739
  br i1 %27, label %if.then1, label %if.else, !dbg !2739

if.then1:                                         ; preds = %if.done
  %28 = load i128, i128* %4, align 8, !dbg !2740
  switch i128 %28, label %switch.default.body [
    i128 54, label %switch.case.body
    i128 55, label %switch.case.body2
  ], !dbg !2740

switch.case.body:                                 ; preds = %if.then1
  %29 = load i128, i128* %2, align 8, !dbg !2743
  %30 = shl i128 %29, 1, !dbg !2743
  %31 = select i1 true, i128 %30, i128 0, !dbg !2743
  store i128 %31, i128* %2, align 8, !dbg !2743
  br label %switch.done, !dbg !2743

switch.case.body2:                                ; preds = %if.then1
  br label %switch.done, !dbg !2743

switch.default.body:                              ; preds = %if.then1
  %32 = load i128, i128* %2, align 8, !dbg !2745
  %33 = load i128, i128* %4, align 8, !dbg !2745
  %34 = sub i128 %33, 55, !dbg !2745
  %35 = icmp ult i128 %34, 128, !dbg !2745
  %36 = lshr i128 %32, %34, !dbg !2745
  %37 = select i1 %35, i128 %36, i128 0, !dbg !2745
  %38 = load i128, i128* %2, align 8, !dbg !2745
  %39 = load i128, i128* %4, align 8, !dbg !2745
  %40 = sub i128 183, %39, !dbg !2745
  %41 = icmp ult i128 %40, 128, !dbg !2745
  %42 = lshr i128 -1, %40, !dbg !2745
  %43 = select i1 %41, i128 %42, i128 0, !dbg !2745
  %44 = and i128 %38, %43, !dbg !2745
  %45 = icmp ne i128 %44, 0, !dbg !2745
  %46 = icmp ne i1 %45, false, !dbg !2745
  %47 = zext i1 %46 to i128, !dbg !2745
  %48 = or i128 %37, %47, !dbg !2745
  store i128 %48, i128* %2, align 8, !dbg !2745
  br label %switch.done, !dbg !2745

switch.done:                                      ; preds = %switch.default.body, %switch.case.body2, %switch.case.body
  %49 = load i128, i128* %2, align 8, !dbg !2746
  %50 = and i128 %49, 4, !dbg !2746
  %51 = icmp ne i128 %50, 0, !dbg !2746
  %52 = icmp ne i1 %51, false, !dbg !2746
  %53 = zext i1 %52 to i128, !dbg !2746
  %54 = load i128, i128* %2, align 8, !dbg !2746
  %55 = or i128 %54, %53, !dbg !2746
  store i128 %55, i128* %2, align 8, !dbg !2746
  %56 = load i128, i128* %2, align 8, !dbg !2747
  %57 = add i128 %56, 1, !dbg !2747
  store i128 %57, i128* %2, align 8, !dbg !2747
  %58 = load i128, i128* %2, align 8, !dbg !2748
  %59 = ashr i128 %58, 2, !dbg !2748
  %60 = select i1 true, i128 %59, i128 0, !dbg !2748
  store i128 %60, i128* %2, align 8, !dbg !2748
  %61 = load i128, i128* %2, align 8, !dbg !2749
  %62 = and i128 %61, 9007199254740992, !dbg !2749
  %63 = icmp ne i128 %62, 0, !dbg !2749
  %64 = zext i1 %63 to i8, !dbg !2749
  %65 = icmp ne i8 %64, 0, !dbg !2749
  br i1 %65, label %if.then3, label %if.done4, !dbg !2749

if.then3:                                         ; preds = %switch.done
  %66 = load i128, i128* %2, align 8, !dbg !2750
  %67 = ashr i128 %66, 1, !dbg !2750
  %68 = select i1 true, i128 %67, i128 0, !dbg !2750
  store i128 %68, i128* %2, align 8, !dbg !2750
  %69 = load i32, i32* %5, align 4, !dbg !2753
  %70 = add i32 %69, 1, !dbg !2753
  store i32 %70, i32* %5, align 4, !dbg !2753
  br label %if.done4, !dbg !2753

if.done4:                                         ; preds = %if.then3, %switch.done
  br label %if.done5, !dbg !2753

if.else:                                          ; preds = %if.done
  %71 = load i128, i128* %4, align 8, !dbg !2754
  %72 = sub i128 53, %71, !dbg !2754
  %73 = and i128 %72, 127, !dbg !2754
  %74 = load i128, i128* %2, align 8, !dbg !2754
  %75 = icmp ult i128 %73, 128, !dbg !2754
  %76 = shl i128 %74, %73, !dbg !2754
  %77 = select i1 %75, i128 %76, i128 0, !dbg !2754
  store i128 %77, i128* %2, align 8, !dbg !2754
  br label %if.done5, !dbg !2754

if.done5:                                         ; preds = %if.else, %if.done4
  call void @llvm.dbg.declare(metadata [2 x i32]* %6, metadata !2756, metadata !DIExpression()), !dbg !2728
  %78 = bitcast [2 x i32]* %6 to i8*, !dbg !2728
  call void @llvm.memset.p0i8.i64(i8* %78, i8 0, i64 8, i1 false), !dbg !2728
  %79 = getelementptr [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !2758
  %80 = load i128, i128* %3, align 8, !dbg !2758
  %81 = trunc i128 %80 to i32, !dbg !2758
  %82 = and i32 %81, -2147483648, !dbg !2758
  %83 = load i32, i32* %5, align 4, !dbg !2758
  %84 = add i32 %83, 1023, !dbg !2758
  %85 = shl i32 %84, 20, !dbg !2758
  %86 = select i1 true, i32 %85, i32 0, !dbg !2758
  %87 = or i32 %82, %86, !dbg !2758
  %88 = load i128, i128* %2, align 8, !dbg !2758
  %89 = trunc i128 %88 to i64, !dbg !2758
  %90 = lshr i64 %89, 32, !dbg !2758
  %91 = select i1 true, i64 %90, i64 0, !dbg !2758
  %92 = and i64 %91, 1048575, !dbg !2758
  %93 = trunc i64 %92 to i32, !dbg !2758
  %94 = or i32 %87, %93, !dbg !2758
  store i32 %94, i32* %79, align 4, !dbg !2758
  %95 = getelementptr [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !2759
  %96 = load i128, i128* %2, align 8, !dbg !2759
  %97 = trunc i128 %96 to i32, !dbg !2759
  store i32 %97, i32* %95, align 4, !dbg !2759
  %98 = load [2 x i32], [2 x i32]* %6, align 4, !dbg !2760
  %99 = bitcast [2 x i32]* %6 to double*, !dbg !2760
  %100 = load double, double* %99, align 8, !dbg !2760
  ret double %100, !dbg !2760
}

; Function Attrs: noinline
define dso_local double @__floattidf_unsigned(i128 %0) #6 !dbg !2761 {
decls:
  %1 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2764, metadata !DIExpression()), !dbg !2765
  %2 = alloca i128, align 8, !dbg !2766
  %3 = alloca i128, align 8, !dbg !2768
  %4 = alloca i32, align 4, !dbg !2769
  %5 = alloca [2 x i32], align 4, !dbg !2770
  br label %entry, !dbg !2771

entry:                                            ; preds = %decls
  store i128 %0, i128* %1, align 8
  %6 = icmp eq i128 %0, 0, !dbg !2772
  %7 = zext i1 %6 to i8, !dbg !2772
  %8 = icmp ne i8 %7, 0, !dbg !2772
  br i1 %8, label %if.then, label %if.done, !dbg !2772

if.then:                                          ; preds = %entry
  ret double 0.000000e+00, !dbg !2773

if.done:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i128* %2, metadata !2776, metadata !DIExpression()), !dbg !2766
  store i128 %0, i128* %2, align 8, !dbg !2766
  %9 = load i128, i128* %2, align 8, !dbg !2768
  %10 = call i128 @llvm.ctlz.i128(i128 %9, i1 false), !dbg !2768
  %11 = sub i128 128, %10, !dbg !2768
  call void @llvm.dbg.declare(metadata i128* %3, metadata !2777, metadata !DIExpression()), !dbg !2768
  store i128 %11, i128* %3, align 8, !dbg !2768
  %12 = load i128, i128* %3, align 8, !dbg !2769
  %13 = sub i128 %12, 1, !dbg !2769
  %14 = trunc i128 %13 to i32, !dbg !2769
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2778, metadata !DIExpression()), !dbg !2769
  store i32 %14, i32* %4, align 4, !dbg !2769
  %15 = load i128, i128* %3, align 8, !dbg !2779
  %16 = icmp ugt i128 %15, 53, !dbg !2779
  %17 = zext i1 %16 to i8, !dbg !2779
  %18 = icmp ne i8 %17, 0, !dbg !2779
  br i1 %18, label %if.then1, label %if.else, !dbg !2779

if.then1:                                         ; preds = %if.done
  %19 = load i128, i128* %3, align 8, !dbg !2780
  switch i128 %19, label %switch.default.body [
    i128 54, label %switch.case.body
    i128 55, label %switch.case.body2
  ], !dbg !2780

switch.case.body:                                 ; preds = %if.then1
  %20 = load i128, i128* %2, align 8, !dbg !2783
  %21 = shl i128 %20, 1, !dbg !2783
  %22 = select i1 true, i128 %21, i128 0, !dbg !2783
  store i128 %22, i128* %2, align 8, !dbg !2783
  br label %switch.done, !dbg !2783

switch.case.body2:                                ; preds = %if.then1
  br label %switch.done, !dbg !2783

switch.default.body:                              ; preds = %if.then1
  %23 = load i128, i128* %2, align 8, !dbg !2785
  %24 = load i128, i128* %3, align 8, !dbg !2785
  %25 = sub i128 %24, 55, !dbg !2785
  %26 = icmp ult i128 %25, 128, !dbg !2785
  %27 = lshr i128 %23, %25, !dbg !2785
  %28 = select i1 %26, i128 %27, i128 0, !dbg !2785
  %29 = load i128, i128* %2, align 8, !dbg !2785
  %30 = load i128, i128* %3, align 8, !dbg !2785
  %31 = sub i128 183, %30, !dbg !2785
  %32 = icmp ult i128 %31, 128, !dbg !2785
  %33 = lshr i128 -1, %31, !dbg !2785
  %34 = select i1 %32, i128 %33, i128 0, !dbg !2785
  %35 = and i128 %29, %34, !dbg !2785
  %36 = icmp ne i128 %35, 0, !dbg !2785
  %37 = icmp ne i1 %36, false, !dbg !2785
  %38 = zext i1 %37 to i128, !dbg !2785
  %39 = or i128 %28, %38, !dbg !2785
  store i128 %39, i128* %2, align 8, !dbg !2785
  br label %switch.done, !dbg !2785

switch.done:                                      ; preds = %switch.default.body, %switch.case.body2, %switch.case.body
  %40 = load i128, i128* %2, align 8, !dbg !2786
  %41 = and i128 %40, 4, !dbg !2786
  %42 = icmp ne i128 %41, 0, !dbg !2786
  %43 = icmp ne i1 %42, false, !dbg !2786
  %44 = zext i1 %43 to i128, !dbg !2786
  %45 = load i128, i128* %2, align 8, !dbg !2786
  %46 = or i128 %45, %44, !dbg !2786
  store i128 %46, i128* %2, align 8, !dbg !2786
  %47 = load i128, i128* %2, align 8, !dbg !2787
  %48 = add i128 %47, 1, !dbg !2787
  store i128 %48, i128* %2, align 8, !dbg !2787
  %49 = load i128, i128* %2, align 8, !dbg !2788
  %50 = lshr i128 %49, 2, !dbg !2788
  %51 = select i1 true, i128 %50, i128 0, !dbg !2788
  store i128 %51, i128* %2, align 8, !dbg !2788
  %52 = load i128, i128* %2, align 8, !dbg !2789
  %53 = and i128 %52, 9007199254740992, !dbg !2789
  %54 = icmp ne i128 %53, 0, !dbg !2789
  %55 = zext i1 %54 to i8, !dbg !2789
  %56 = icmp ne i8 %55, 0, !dbg !2789
  br i1 %56, label %if.then3, label %if.done4, !dbg !2789

if.then3:                                         ; preds = %switch.done
  %57 = load i128, i128* %2, align 8, !dbg !2790
  %58 = lshr i128 %57, 1, !dbg !2790
  %59 = select i1 true, i128 %58, i128 0, !dbg !2790
  store i128 %59, i128* %2, align 8, !dbg !2790
  %60 = load i32, i32* %4, align 4, !dbg !2793
  %61 = add i32 %60, 1, !dbg !2793
  store i32 %61, i32* %4, align 4, !dbg !2793
  br label %if.done4, !dbg !2793

if.done4:                                         ; preds = %if.then3, %switch.done
  br label %if.done5, !dbg !2793

if.else:                                          ; preds = %if.done
  %62 = load i128, i128* %3, align 8, !dbg !2794
  %63 = sub i128 53, %62, !dbg !2794
  %64 = load i128, i128* %2, align 8, !dbg !2794
  %65 = icmp ult i128 %63, 128, !dbg !2794
  %66 = shl i128 %64, %63, !dbg !2794
  %67 = select i1 %65, i128 %66, i128 0, !dbg !2794
  store i128 %67, i128* %2, align 8, !dbg !2794
  br label %if.done5, !dbg !2794

if.done5:                                         ; preds = %if.else, %if.done4
  call void @llvm.dbg.declare(metadata [2 x i32]* %5, metadata !2796, metadata !DIExpression()), !dbg !2770
  %68 = bitcast [2 x i32]* %5 to i8*, !dbg !2770
  call void @llvm.memset.p0i8.i64(i8* %68, i8 0, i64 8, i1 false), !dbg !2770
  %69 = getelementptr [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !2797
  %70 = load i32, i32* %4, align 4, !dbg !2797
  %71 = add i32 %70, 1023, !dbg !2797
  %72 = shl i32 %71, 20, !dbg !2797
  %73 = select i1 true, i32 %72, i32 0, !dbg !2797
  %74 = or i32 0, %73, !dbg !2797
  %75 = load i128, i128* %2, align 8, !dbg !2797
  %76 = trunc i128 %75 to i64, !dbg !2797
  %77 = lshr i64 %76, 32, !dbg !2797
  %78 = select i1 true, i64 %77, i64 0, !dbg !2797
  %79 = and i64 %78, 1048575, !dbg !2797
  %80 = trunc i64 %79 to i32, !dbg !2797
  %81 = or i32 %74, %80, !dbg !2797
  store i32 %81, i32* %69, align 4, !dbg !2797
  %82 = getelementptr [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !2798
  %83 = load i128, i128* %2, align 8, !dbg !2798
  %84 = trunc i128 %83 to i32, !dbg !2798
  store i32 %84, i32* %82, align 4, !dbg !2798
  %85 = load [2 x i32], [2 x i32]* %5, align 4, !dbg !2799
  %86 = bitcast [2 x i32]* %5 to double*, !dbg !2799
  %87 = load double, double* %86, align 8, !dbg !2799
  ret double %87, !dbg !2799
}

; Function Attrs: noinline
define dso_local i128 @__fixunsdfti(double %0) #6 !dbg !2800 {
decls:
  %1 = alloca double, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !2803, metadata !DIExpression()), !dbg !2804
  %2 = alloca i64, align 8, !dbg !2805
  br label %entry, !dbg !2807

entry:                                            ; preds = %decls
  store double %0, double* %1, align 8
  %3 = fptoui double %0 to i64, !dbg !2805
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2808, metadata !DIExpression()), !dbg !2805
  store i64 %3, i64* %2, align 8, !dbg !2805
  %4 = load i64, i64* %2, align 8, !dbg !2809
  %5 = zext i64 %4 to i128, !dbg !2809
  ret i128 %5, !dbg !2809
}

; Function Attrs: noinline
define dso_local i128 @__fixunsdfdi(double %0) #6 !dbg !2810 {
decls:
  %1 = alloca double, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !2813, metadata !DIExpression()), !dbg !2814
  %2 = alloca i64, align 8, !dbg !2815
  br label %entry, !dbg !2817

entry:                                            ; preds = %decls
  store double %0, double* %1, align 8
  %3 = fptosi double %0 to i64, !dbg !2815
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2818, metadata !DIExpression()), !dbg !2815
  store i64 %3, i64* %2, align 8, !dbg !2815
  %4 = load i64, i64* %2, align 8, !dbg !2819
  %5 = sext i64 %4 to i128, !dbg !2819
  ret i128 %5, !dbg !2819
}

; Function Attrs: noinline
define dso_local i128 @__umodti3(i128 %0, i128 %1) #6 !dbg !2820 {
decls:
  %2 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2823, metadata !DIExpression()), !dbg !2824
  %3 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %1, metadata !2825, metadata !DIExpression()), !dbg !2826
  %4 = alloca i128, align 8, !dbg !2827
  br label %entry, !dbg !2829

entry:                                            ; preds = %decls
  store i128 %0, i128* %2, align 8
  store i128 %1, i128* %3, align 8
  call void @llvm.dbg.declare(metadata i128* %4, metadata !2830, metadata !DIExpression()), !dbg !2827
  store i128 undef, i128* %4, align 8, !dbg !2827
  %5 = call i128 @runtime.udivmod128(i128 %0, i128 %1, i128* %4) #6, !dbg !2831
  %6 = load i128, i128* %4, align 8, !dbg !2832
  ret i128 %6, !dbg !2832
}

; Function Attrs: noinline
define dso_local i128 @__udivmodti4(i128 %0, i128 %1, i128* %2) #6 !dbg !2833 {
decls:
  %3 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2834, metadata !DIExpression()), !dbg !2835
  %4 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %1, metadata !2836, metadata !DIExpression()), !dbg !2837
  %5 = alloca i128*, align 8
  call void @llvm.dbg.value(metadata i128* %2, metadata !2838, metadata !DIExpression()), !dbg !2839
  br label %entry, !dbg !2840

entry:                                            ; preds = %decls
  store i128 %0, i128* %3, align 8
  store i128 %1, i128* %4, align 8
  store i128* %2, i128** %5, align 8
  %6 = call i128 @runtime.udivmod128(i128 %0, i128 %1, i128* %2) #6, !dbg !2841
  ret i128 %6, !dbg !2841
}

; Function Attrs: noinline
define dso_local i128 @__udivti3(i128 %0, i128 %1) #6 !dbg !2843 {
decls:
  %2 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2844, metadata !DIExpression()), !dbg !2845
  %3 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %1, metadata !2846, metadata !DIExpression()), !dbg !2847
  br label %entry, !dbg !2848

entry:                                            ; preds = %decls
  store i128 %0, i128* %2, align 8
  store i128 %1, i128* %3, align 8
  %4 = call i128 @__udivmodti4(i128 %0, i128 %1, i128* null) #6, !dbg !2849
  ret i128 %4, !dbg !2849
}

; Function Attrs: noinline
define dso_local i128 @__modti3(i128 %0, i128 %1) #6 !dbg !2851 {
decls:
  %2 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2854, metadata !DIExpression()), !dbg !2855
  %3 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %1, metadata !2856, metadata !DIExpression()), !dbg !2857
  %4 = alloca i128, align 8, !dbg !2858
  %5 = alloca i128, align 8, !dbg !2860
  %6 = alloca i128, align 8, !dbg !2861
  %7 = alloca i128, align 8, !dbg !2862
  %8 = alloca i128, align 8, !dbg !2863
  br label %entry, !dbg !2864

entry:                                            ; preds = %decls
  store i128 %0, i128* %2, align 8
  store i128 %1, i128* %3, align 8
  %9 = ashr i128 %0, 127, !dbg !2858
  %10 = select i1 true, i128 %9, i128 0, !dbg !2858
  call void @llvm.dbg.declare(metadata i128* %4, metadata !2865, metadata !DIExpression()), !dbg !2858
  store i128 %10, i128* %4, align 8, !dbg !2858
  %11 = ashr i128 %1, 127, !dbg !2860
  %12 = select i1 true, i128 %11, i128 0, !dbg !2860
  call void @llvm.dbg.declare(metadata i128* %5, metadata !2866, metadata !DIExpression()), !dbg !2860
  store i128 %12, i128* %5, align 8, !dbg !2860
  %13 = load i128, i128* %4, align 8, !dbg !2861
  %14 = xor i128 %0, %13, !dbg !2861
  %15 = load i128, i128* %4, align 8, !dbg !2861
  %16 = sub i128 %14, %15, !dbg !2861
  call void @llvm.dbg.declare(metadata i128* %6, metadata !2867, metadata !DIExpression()), !dbg !2861
  store i128 %16, i128* %6, align 8, !dbg !2861
  %17 = load i128, i128* %5, align 8, !dbg !2862
  %18 = xor i128 %1, %17, !dbg !2862
  %19 = load i128, i128* %5, align 8, !dbg !2862
  %20 = sub i128 %18, %19, !dbg !2862
  call void @llvm.dbg.declare(metadata i128* %7, metadata !2868, metadata !DIExpression()), !dbg !2862
  store i128 %20, i128* %7, align 8, !dbg !2862
  call void @llvm.dbg.declare(metadata i128* %8, metadata !2869, metadata !DIExpression()), !dbg !2863
  store i128 undef, i128* %8, align 8, !dbg !2863
  %21 = load i128, i128* %6, align 8, !dbg !2870
  %22 = load i128, i128* %7, align 8, !dbg !2870
  %23 = call i128 @runtime.udivmod128(i128 %21, i128 %22, i128* %8) #6, !dbg !2870
  %24 = load i128, i128* %8, align 8, !dbg !2871
  %25 = load i128, i128* %4, align 8, !dbg !2871
  %26 = xor i128 %24, %25, !dbg !2871
  %27 = load i128, i128* %4, align 8, !dbg !2871
  %28 = sub i128 %26, %27, !dbg !2871
  ret i128 %28, !dbg !2871
}

; Function Attrs: noinline
define dso_local i128 @__divmodti4(i128 %0, i128 %1, i128* %2) #6 !dbg !2872 {
decls:
  %3 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2876, metadata !DIExpression()), !dbg !2877
  %4 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %1, metadata !2878, metadata !DIExpression()), !dbg !2879
  %5 = alloca i128*, align 8
  call void @llvm.dbg.value(metadata i128* %2, metadata !2880, metadata !DIExpression()), !dbg !2881
  %6 = alloca i128, align 8, !dbg !2882
  br label %entry, !dbg !2884

entry:                                            ; preds = %decls
  store i128 %0, i128* %3, align 8
  store i128 %1, i128* %4, align 8
  store i128* %2, i128** %5, align 8
  %7 = call i128 @runtime.udivmod128(i128 %0, i128 %1, i128* %2) #6, !dbg !2882
  call void @llvm.dbg.declare(metadata i128* %6, metadata !2885, metadata !DIExpression()), !dbg !2882
  store i128 %7, i128* %6, align 8, !dbg !2882
  %8 = load i128, i128* %6, align 8, !dbg !2886
  ret i128 %8, !dbg !2886
}

; Function Attrs: noinline
define dso_local i128 @__divti3(i128 %0, i128 %1) #6 !dbg !2887 {
decls:
  %2 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %0, metadata !2888, metadata !DIExpression()), !dbg !2889
  %3 = alloca i128, align 8
  call void @llvm.dbg.value(metadata i128 %1, metadata !2890, metadata !DIExpression()), !dbg !2891
  %4 = alloca i128, align 8, !dbg !2892
  br label %entry, !dbg !2894

entry:                                            ; preds = %decls
  store i128 %0, i128* %2, align 8
  store i128 %1, i128* %3, align 8
  %5 = call i128 @__udivmodti4(i128 %0, i128 %1, i128* null) #6, !dbg !2892
  call void @llvm.dbg.declare(metadata i128* %4, metadata !2895, metadata !DIExpression()), !dbg !2892
  store i128 %5, i128* %4, align 8, !dbg !2892
  %6 = load i128, i128* %4, align 8, !dbg !2896
  ret i128 %6, !dbg !2896
}

; Function Attrs: noinline
define dso_local i128 @__fixdfti(i64 %0, i8* noalias nocapture nonnull %__.context_ptr) #6 !dbg !2897 {
decls:
  %1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2902, metadata !DIExpression()), !dbg !2903
  %2 = alloca i64, align 8, !dbg !2904
  %3 = alloca i64, align 8, !dbg !2906
  %4 = alloca i128, align 8, !dbg !2907
  %5 = alloca i64, align 8, !dbg !2908
  %6 = alloca i64, align 8, !dbg !2909
  br label %entry, !dbg !2903

entry:                                            ; preds = %decls
  store i64 %0, i64* %1, align 8
  %7 = bitcast i8* %__.context_ptr to %runtime.Context*
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2910, metadata !DIExpression()), !dbg !2904
  store i64 %0, i64* %2, align 8, !dbg !2904
  %8 = load i64, i64* %2, align 8, !dbg !2906
  %9 = and i64 %8, 9223372036854775807, !dbg !2906
  call void @llvm.dbg.declare(metadata i64* %3, metadata !2911, metadata !DIExpression()), !dbg !2906
  store i64 %9, i64* %3, align 8, !dbg !2906
  %10 = load i64, i64* %2, align 8, !dbg !2907
  %11 = and i64 %10, -9223372036854775808, !dbg !2907
  %12 = icmp ne i64 %11, 0, !dbg !2907
  %13 = zext i1 %12 to i8, !dbg !2907
  %14 = icmp ne i8 %13, 0, !dbg !2907
  br i1 %14, label %if.then, label %if.else, !dbg !2907

if.then:                                          ; preds = %entry
  br label %if.done, !dbg !2907

if.else:                                          ; preds = %entry
  br label %if.done, !dbg !2907

if.done:                                          ; preds = %if.else, %if.then
  %15 = phi i128 [ -1, %if.then ], [ 1, %if.else ], !dbg !2907
  call void @llvm.dbg.declare(metadata i128* %4, metadata !2912, metadata !DIExpression()), !dbg !2907
  store i128 %15, i128* %4, align 8, !dbg !2907
  %16 = load i64, i64* %3, align 8, !dbg !2908
  %17 = lshr i64 %16, 52, !dbg !2908
  %18 = select i1 true, i64 %17, i64 0, !dbg !2908
  %19 = sub i64 %18, 1023, !dbg !2908
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2913, metadata !DIExpression()), !dbg !2908
  store i64 %19, i64* %5, align 8, !dbg !2908
  %20 = load i64, i64* %3, align 8, !dbg !2909
  %21 = and i64 %20, 4503599627370495, !dbg !2909
  %22 = or i64 %21, 4503599627370496, !dbg !2909
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2914, metadata !DIExpression()), !dbg !2909
  store i64 %22, i64* %6, align 8, !dbg !2909
  %23 = load i64, i64* %5, align 8, !dbg !2915
  %24 = icmp ult i64 %23, 0, !dbg !2915
  %25 = zext i1 %24 to i8, !dbg !2915
  %26 = icmp ne i8 %25, 0, !dbg !2915
  br i1 %26, label %if.then1, label %if.done2, !dbg !2915

if.then1:                                         ; preds = %if.done
  ret i128 0, !dbg !2916

if.done2:                                         ; preds = %if.done
  %27 = load i64, i64* %5, align 8, !dbg !2919
  %28 = icmp uge i64 %27, 128, !dbg !2919
  %29 = zext i1 %28 to i8, !dbg !2919
  %30 = icmp ne i8 %29, 0, !dbg !2919
  br i1 %30, label %if.then3, label %if.done7, !dbg !2919

if.then3:                                         ; preds = %if.done2
  %31 = load i128, i128* %4, align 8, !dbg !2920
  %32 = icmp eq i128 %31, 1, !dbg !2920
  %33 = zext i1 %32 to i8, !dbg !2920
  %34 = icmp ne i8 %33, 0, !dbg !2920
  br i1 %34, label %if.then4, label %if.else5, !dbg !2920

if.then4:                                         ; preds = %if.then3
  br label %if.done6, !dbg !2920

if.else5:                                         ; preds = %if.then3
  br label %if.done6, !dbg !2920

if.done6:                                         ; preds = %if.else5, %if.then4
  %35 = phi i128 [ 170141183460469231731687303715884105727, %if.then4 ], [ -170141183460469231731687303715884105728, %if.else5 ], !dbg !2920
  ret i128 %35, !dbg !2920

if.done7:                                         ; preds = %if.done2
  %36 = load i64, i64* %5, align 8, !dbg !2923
  %37 = icmp ult i64 %36, 52, !dbg !2923
  %38 = zext i1 %37 to i8, !dbg !2923
  %39 = icmp ne i8 %38, 0, !dbg !2923
  br i1 %39, label %if.then8, label %if.else9, !dbg !2923

if.then8:                                         ; preds = %if.done7
  %40 = load i128, i128* %4, align 8, !dbg !2924
  %41 = load i64, i64* %6, align 8, !dbg !2924
  %42 = load i64, i64* %5, align 8, !dbg !2924
  %43 = sub i64 52, %42, !dbg !2924
  %44 = icmp ult i64 %43, 64, !dbg !2924
  %45 = lshr i64 %41, %43, !dbg !2924
  %46 = select i1 %44, i64 %45, i64 0, !dbg !2924
  %47 = zext i64 %46 to i128, !dbg !2924
  %48 = mul i128 %40, %47, !dbg !2924
  ret i128 %48, !dbg !2924

if.else9:                                         ; preds = %if.done7
  %49 = load i128, i128* %4, align 8, !dbg !2927
  %50 = load i64, i64* %6, align 8, !dbg !2927
  %51 = zext i64 %50 to i128, !dbg !2927
  %52 = load i64, i64* %5, align 8, !dbg !2927
  %53 = sub i64 %52, 52, !dbg !2927
  %54 = zext i64 %53 to i128, !dbg !2927
  %55 = icmp ult i128 %54, 128, !dbg !2927
  %56 = shl i128 %51, %54, !dbg !2927
  %57 = select i1 %55, i128 %56, i128 0, !dbg !2927
  %58 = mul i128 %49, %57, !dbg !2927
  ret i128 %58, !dbg !2927

if.done10:                                        ; No predecessors!
  unreachable, !dbg !2903
}

declare i32* @__error()

declare i64 @write(i32, i8*, i64)

declare i8* @malloc(i64)

declare i8* @calloc(i64, i64)

declare void @free(i8*)

declare i8* @realloc(i8*, i64)

define internal i64 @os.get_last_error() !dbg !2929 {
decls:
  br label %entry, !dbg !2932

entry:                                            ; preds = %decls
  %0 = call i32* @__error(), !dbg !2933
  %1 = load i32, i32* %0, align 4, !dbg !2933
  %2 = sext i32 %1 to i64, !dbg !2933
  ret i64 %2, !dbg !2933
}

define internal { i64, i64 } @os.write(i32 %0, { i8*, i64 } %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2935 {
decls:
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2941, metadata !DIExpression()), !dbg !2942
  %3 = alloca { i8*, i64 }, align 8
  call void @llvm.dbg.value(metadata { i8*, i64 } %1, metadata !2943, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2945, metadata !DIExpression()), !dbg !2946
  %4 = alloca { i64, i64 }, align 8, !dbg !2947
  %5 = alloca i64, align 8, !dbg !2951
  %6 = alloca { i64, i64 }, align 8, !dbg !2952
  %7 = alloca { i64, i64 }, align 8, !dbg !2955
  br label %entry, !dbg !2946

entry:                                            ; preds = %decls
  store i32 %0, i32* %2, align 4
  store { i8*, i64 } %1, { i8*, i64 }* %3, align 8
  %8 = bitcast i8* %__.context_ptr to %runtime.Context*
  %9 = extractvalue { i8*, i64 } %1, 1, !dbg !2956
  %10 = icmp eq i64 %9, 0, !dbg !2956
  %11 = zext i1 %10 to i8, !dbg !2956
  %12 = icmp ne i8 %11, 0, !dbg !2956
  br i1 %12, label %if.then, label %if.done, !dbg !2956

if.then:                                          ; preds = %entry
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0, !dbg !2947
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1, !dbg !2947
  store i64 0, i64* %13, align 8, !dbg !2947
  store i64 0, i64* %14, align 8, !dbg !2947
  %15 = load { i64, i64 }, { i64, i64 }* %4, align 8, !dbg !2947
  ret { i64, i64 } %15, !dbg !2947

if.done:                                          ; preds = %entry
  %16 = extractvalue { i8*, i64 } %1, 0, !dbg !2951
  %17 = extractvalue { i8*, i64 } %1, 1, !dbg !2951
  %18 = call i64 @write(i32 %0, i8* %16, i64 %17), !dbg !2951
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2957, metadata !DIExpression()), !dbg !2951
  store i64 %18, i64* %5, align 8, !dbg !2951
  %19 = load i64, i64* %5, align 8, !dbg !2958
  %20 = icmp slt i64 %19, 0, !dbg !2958
  %21 = zext i1 %20 to i8, !dbg !2958
  %22 = icmp ne i8 %21, 0, !dbg !2958
  br i1 %22, label %if.then1, label %if.done2, !dbg !2958

if.then1:                                         ; preds = %if.done
  %23 = call i64 @os.get_last_error(), !dbg !2952
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0, !dbg !2952
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1, !dbg !2952
  store i64 -1, i64* %24, align 8, !dbg !2952
  store i64 %23, i64* %25, align 8, !dbg !2952
  %26 = load { i64, i64 }, { i64, i64 }* %6, align 8, !dbg !2952
  ret { i64, i64 } %26, !dbg !2952

if.done2:                                         ; preds = %if.done
  %27 = load i64, i64* %5, align 8, !dbg !2955
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0, !dbg !2955
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1, !dbg !2955
  store i64 %27, i64* %28, align 8, !dbg !2955
  store i64 0, i64* %29, align 8, !dbg !2955
  %30 = load { i64, i64 }, { i64, i64 }* %7, align 8, !dbg !2955
  ret { i64, i64 } %30, !dbg !2955
}

define internal i8* @os.heap_alloc(i64 %0, i1 zeroext %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2959 {
decls:
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2962, metadata !DIExpression()), !dbg !2963
  %3 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2964, metadata !DIExpression()), !dbg !2965
  br label %entry, !dbg !2965

entry:                                            ; preds = %decls
  store i64 %0, i64* %2, align 8
  %4 = zext i1 %1 to i8
  store i8 %4, i8* %3, align 1
  call void @llvm.dbg.value(metadata i8 %4, metadata !2966, metadata !DIExpression()), !dbg !2967
  %5 = bitcast i8* %__.context_ptr to %runtime.Context*
  %6 = icmp sle i64 %0, 0, !dbg !2968
  %7 = zext i1 %6 to i8, !dbg !2968
  %8 = icmp ne i8 %7, 0, !dbg !2968
  br i1 %8, label %if.then, label %if.done, !dbg !2968

if.then:                                          ; preds = %entry
  ret i8* null, !dbg !2970

if.done:                                          ; preds = %entry
  %9 = icmp ne i8 %4, 0, !dbg !2973
  br i1 %9, label %if.then1, label %if.else, !dbg !2973

if.then1:                                         ; preds = %if.done
  %10 = call i8* @calloc(i64 1, i64 %0), !dbg !2974
  ret i8* %10, !dbg !2974

if.else:                                          ; preds = %if.done
  %11 = call i8* @malloc(i64 %0), !dbg !2977
  ret i8* %11, !dbg !2977

if.done2:                                         ; No predecessors!
  unreachable, !dbg !2965
}

define internal i8* @os.heap_resize(i8* %0, i64 %1, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2979 {
decls:
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2980, metadata !DIExpression()), !dbg !2981
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2984, metadata !DIExpression()), !dbg !2985
  br label %entry, !dbg !2985

entry:                                            ; preds = %decls
  store i8* %0, i8** %2, align 8
  store i64 %1, i64* %3, align 8
  %4 = bitcast i8* %__.context_ptr to %runtime.Context*
  %5 = call i8* @realloc(i8* %0, i64 %1), !dbg !2986
  ret i8* %5, !dbg !2986
}

define internal void @os.heap_free(i8* %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2988 {
decls:
  %1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2991, metadata !DIExpression()), !dbg !2992
  br label %entry, !dbg !2992

entry:                                            ; preds = %decls
  store i8* %0, i8** %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  call void @free(i8* %0), !dbg !2993
  ret void, !dbg !2995
}

define internal { i64, i64 } @runtime.default_allocator(i8* noalias nocapture nonnull %__.context_ptr) !dbg !2996 {
decls:
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2998, metadata !DIExpression()), !dbg !2999
  %0 = alloca %runtime.Allocator, align 8, !dbg !3000
  br label %entry, !dbg !2999

entry:                                            ; preds = %decls
  %1 = bitcast i8* %__.context_ptr to %runtime.Context*
  %2 = bitcast %runtime.Context* %1 to i8*, !dbg !3000
  %3 = call { i64, i64 } @os.heap_allocator(i8* %2), !dbg !3000
  %4 = bitcast %runtime.Allocator* %0 to { i64, i64 }*, !dbg !3000
  store { i64, i64 } %3, { i64, i64 }* %4, align 8, !dbg !3000
  %5 = load %runtime.Allocator, %runtime.Allocator* %0, align 8, !dbg !3000
  %6 = bitcast %runtime.Allocator* %0 to { i64, i64 }*, !dbg !3000
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 8, !dbg !3000
  ret { i64, i64 } %7, !dbg !3000
}

define internal void @runtime.default_temp_allocator_destroy(%runtime.Default_Temp_Allocator* %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !3002 {
decls:
  %1 = alloca %runtime.Default_Temp_Allocator*, align 8
  call void @llvm.dbg.value(metadata %runtime.Default_Temp_Allocator* %0, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3008, metadata !DIExpression()), !dbg !3009
  br label %entry, !dbg !3009

entry:                                            ; preds = %decls
  store %runtime.Default_Temp_Allocator* %0, %runtime.Default_Temp_Allocator** %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  %3 = icmp ne %runtime.Default_Temp_Allocator* %0, null, !dbg !3010
  %4 = zext i1 %3 to i8, !dbg !3010
  %5 = icmp ne i8 %4, 0, !dbg !3010
  br i1 %5, label %if.then, label %if.done, !dbg !3010

if.then:                                          ; preds = %entry
  %6 = load %runtime.Default_Temp_Allocator*, %runtime.Default_Temp_Allocator** %1, align 8, !dbg !3012
  %7 = getelementptr inbounds %runtime.Default_Temp_Allocator, %runtime.Default_Temp_Allocator* %6, i32 0, i32 0, !dbg !3012
  %8 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* @"ggv$40", align 8, !dbg !3012
  %9 = bitcast %runtime.Context* %2 to i8*, !dbg !3012
  call void @runtime.arena_destroy(%runtime.Arena* %7, %runtime.Source_Code_Location* byval @"ggv$40", i8* %9), !dbg !3012
  %10 = bitcast %runtime.Default_Temp_Allocator* %0 to i8*, !dbg !3015
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 56, i1 false), !dbg !3015
  br label %if.done, !dbg !3015

if.done:                                          ; preds = %if.then, %entry
  ret void, !dbg !3016
}

define internal void @runtime.default_temp_allocator_proc({ { i8*, i64 }, i8 }* noalias sret %agg.result, i8* %0, i8 %1, i64 %2, i64 %3, i8* %4, i64 %5, %runtime.Source_Code_Location* byval align 8 %6, i8* noalias nocapture nonnull %__.context_ptr) !dbg !3017 {
decls:
  %7 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()), !dbg !3019
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8 %1, metadata !3020, metadata !DIExpression()), !dbg !3021
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %2, metadata !3022, metadata !DIExpression()), !dbg !3023
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !3024, metadata !DIExpression()), !dbg !3025
  %11 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %4, metadata !3026, metadata !DIExpression()), !dbg !3027
  %12 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %5, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %6, metadata !3030, metadata !DIExpression()), !dbg !3031
  %13 = alloca { i8*, i64 }, align 8
  %14 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3032, metadata !DIExpression()), !dbg !3033
  %15 = alloca %runtime.Default_Temp_Allocator*, align 8, !dbg !3034
  %16 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !3036
  br label %entry, !dbg !3033

entry:                                            ; preds = %decls
  store i8* %0, i8** %7, align 8
  store i8 %1, i8* %8, align 1
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %13, metadata !3037, metadata !DIExpression()), !dbg !3038
  %18 = bitcast { i8*, i64 }* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1
  call void @llvm.dbg.declare(metadata i8* %14, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i8 0, i8* %14, align 1
  %20 = bitcast i8* %__.context_ptr to %runtime.Context*
  %21 = bitcast i8* %0 to %runtime.Default_Temp_Allocator*, !dbg !3034
  call void @llvm.dbg.declare(metadata %runtime.Default_Temp_Allocator** %15, metadata !3041, metadata !DIExpression()), !dbg !3034
  store %runtime.Default_Temp_Allocator* %21, %runtime.Default_Temp_Allocator** %15, align 8, !dbg !3034
  %22 = load %runtime.Default_Temp_Allocator*, %runtime.Default_Temp_Allocator** %15, align 8, !dbg !3036
  %23 = getelementptr inbounds %runtime.Default_Temp_Allocator, %runtime.Default_Temp_Allocator* %22, i32 0, i32 0, !dbg !3036
  %24 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %6, align 8, !dbg !3036
  %25 = bitcast %runtime.Arena* %23 to i8*, !dbg !3036
  %26 = bitcast { { i8*, i64 }, i8 }* %16 to i8*, !dbg !3036
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 24, i1 false), !dbg !3036
  %27 = bitcast %runtime.Context* %20 to i8*, !dbg !3036
  call void @runtime.arena_allocator_proc({ { i8*, i64 }, i8 }* sret %16, i8* %25, i8 %1, i64 %2, i64 %3, i8* %4, i64 %5, %runtime.Source_Code_Location* byval %6, i8* %27), !dbg !3036
  %28 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %16, align 8, !dbg !3036
  %29 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %16, i32 0, i32 0, !dbg !3036
  %30 = load { i8*, i64 }, { i8*, i64 }* %29, align 8, !dbg !3036
  %31 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %16, i32 0, i32 1, !dbg !3036
  %32 = load i8, i8* %31, align 1, !dbg !3036
  store { i8*, i64 } %30, { i8*, i64 }* %13, align 8, !dbg !3036
  store i8 %32, i8* %14, align 1, !dbg !3036
  %33 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3036
  %34 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3036
  store { i8*, i64 } %30, { i8*, i64 }* %33, align 8, !dbg !3036
  store i8 %32, i8* %34, align 1, !dbg !3036
  ret void, !dbg !3036
}

; Function Attrs: noinline
define dso_local i32 @main(i32 %0, i8** %1) #6 !dbg !3042 {
decls:
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3050, metadata !DIExpression()), !dbg !3051
  %3 = alloca i8**, align 8
  call void @llvm.dbg.value(metadata i8** %1, metadata !3052, metadata !DIExpression()), !dbg !3053
  %4 = alloca { i8**, i64 }, align 8, !dbg !3054
  %5 = alloca %runtime.Context, align 8, !dbg !3056
  %6 = alloca %runtime.Context, align 8, !dbg !3056
  br label %entry, !dbg !3057

entry:                                            ; preds = %decls
  store i32 %0, i32* %2, align 4
  store i8** %1, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8, !dbg !3054
  %8 = sext i32 %0 to i64, !dbg !3054
  call void @runtime.multi_pointer_slice_expr_error(%..string { i8* getelementptr inbounds ([56 x i8], [56 x i8]* @"csbs$93", i64 0, i64 0), i64 55 }, i32 26, i32 16, i64 0, i64 %8) #6, !dbg !3054
  %9 = getelementptr i8*, i8** %7, i64 0, !dbg !3054
  %10 = sub i64 %8, 0, !dbg !3054
  %11 = getelementptr inbounds { i8**, i64 }, { i8**, i64 }* %4, i32 0, i32 0, !dbg !3054
  %12 = getelementptr inbounds { i8**, i64 }, { i8**, i64 }* %4, i32 0, i32 1, !dbg !3054
  store i8** %9, i8*** %11, align 8, !dbg !3054
  store i64 %10, i64* %12, align 8, !dbg !3054
  %13 = load { i8**, i64 }, { i8**, i64 }* %4, align 8, !dbg !3054
  store { i8**, i64 } %13, { i8**, i64 }* @runtime.args__, align 8, !dbg !3054
  %14 = bitcast %runtime.Context* %5 to i8*, !dbg !3056
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 96, i1 false), !dbg !3056
  call void @runtime.__init_context-862(%runtime.Context* %5) #6, !dbg !3056
  call void @llvm.dbg.declare(metadata %runtime.Context* %5, metadata !3058, metadata !DIExpression()), !dbg !3056
  %15 = bitcast %runtime.Context* %6 to i8*, !dbg !3056
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 96, i1 false), !dbg !3056
  call void @runtime.default_context(%runtime.Context* sret %6) #6, !dbg !3056
  %16 = load %runtime.Context, %runtime.Context* %6, align 8, !dbg !3056
  %17 = bitcast %runtime.Context* %5 to i8*, !dbg !3056
  %18 = bitcast %runtime.Context* %6 to i8*, !dbg !3056
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 96, i1 false), !dbg !3056
  %19 = bitcast %runtime.Context* %5 to i8*, !dbg !3059
  call void @"__$startup_runtime"(i8* %19) #6, !dbg !3059
  %20 = bitcast %runtime.Context* %5 to i8*, !dbg !3060
  call void @odinasm.main(i8* %20) #6, !dbg !3060
  %21 = bitcast %runtime.Context* %5 to i8*, !dbg !3061
  call void @"__$cleanup_runtime"(i8* %21) #6, !dbg !3061
  ret i32 0, !dbg !3062
}

define internal i64 @runtime.copy_slice-10625({ i8*, i64 } %0, { i8*, i64 } %1) !dbg !3063 {
decls:
  %2 = alloca { i8*, i64 }, align 8
  call void @llvm.dbg.value(metadata { i8*, i64 } %0, metadata !3066, metadata !DIExpression()), !dbg !3067
  %3 = alloca { i8*, i64 }, align 8
  call void @llvm.dbg.value(metadata { i8*, i64 } %1, metadata !3068, metadata !DIExpression()), !dbg !3069
  %4 = alloca i64, align 8, !dbg !3070
  br label %entry, !dbg !3072

entry:                                            ; preds = %decls
  store { i8*, i64 } %0, { i8*, i64 }* %2, align 8
  store { i8*, i64 } %1, { i8*, i64 }* %3, align 8
  %5 = extractvalue { i8*, i64 } %0, 1, !dbg !3070
  %6 = extractvalue { i8*, i64 } %1, 1, !dbg !3070
  %7 = icmp slt i64 %5, %6, !dbg !3070
  %8 = select i1 %7, i64 %5, i64 %6, !dbg !3070
  %9 = icmp sgt i64 0, %8, !dbg !3070
  %10 = select i1 %9, i64 0, i64 %8, !dbg !3070
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3073, metadata !DIExpression()), !dbg !3070
  store i64 %10, i64* %4, align 8, !dbg !3070
  %11 = load i64, i64* %4, align 8, !dbg !3074
  %12 = icmp sgt i64 %11, 0, !dbg !3074
  %13 = zext i1 %12 to i8, !dbg !3074
  %14 = icmp ne i8 %13, 0, !dbg !3074
  br i1 %14, label %if.then, label %if.done, !dbg !3074

if.then:                                          ; preds = %entry
  %15 = extractvalue { i8*, i64 } %0, 0, !dbg !3075
  %16 = extractvalue { i8*, i64 } %1, 0, !dbg !3075
  %17 = load i64, i64* %4, align 8, !dbg !3075
  %18 = mul i64 %17, 1, !dbg !3075
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %18, i1 false), !dbg !3075
  br label %if.done, !dbg !3075

if.done:                                          ; preds = %if.then, %entry
  %19 = load i64, i64* %4, align 8, !dbg !3078
  ret i64 %19, !dbg !3078
}

define internal i64 @runtime.copy_from_string-11468({ i8*, i64 } %0, %..string %1) !dbg !3079 {
decls:
  %2 = alloca { i8*, i64 }, align 8
  call void @llvm.dbg.value(metadata { i8*, i64 } %0, metadata !3082, metadata !DIExpression()), !dbg !3083
  %3 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %1, metadata !3084, metadata !DIExpression()), !dbg !3085
  %4 = alloca i64, align 8, !dbg !3086
  br label %entry, !dbg !3088

entry:                                            ; preds = %decls
  store { i8*, i64 } %0, { i8*, i64 }* %2, align 8
  store %..string %1, %..string* %3, align 8
  %5 = extractvalue { i8*, i64 } %0, 1, !dbg !3086
  %6 = extractvalue %..string %1, 1, !dbg !3086
  %7 = icmp slt i64 %5, %6, !dbg !3086
  %8 = select i1 %7, i64 %5, i64 %6, !dbg !3086
  %9 = icmp sgt i64 0, %8, !dbg !3086
  %10 = select i1 %9, i64 0, i64 %8, !dbg !3086
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3089, metadata !DIExpression()), !dbg !3086
  store i64 %10, i64* %4, align 8, !dbg !3086
  %11 = load i64, i64* %4, align 8, !dbg !3090
  %12 = icmp sgt i64 %11, 0, !dbg !3090
  %13 = zext i1 %12 to i8, !dbg !3090
  %14 = icmp ne i8 %13, 0, !dbg !3090
  br i1 %14, label %if.then, label %if.done, !dbg !3090

if.then:                                          ; preds = %entry
  %15 = extractvalue { i8*, i64 } %0, 0, !dbg !3091
  %16 = extractvalue %..string %1, 0, !dbg !3091
  %17 = load i64, i64* %4, align 8, !dbg !3091
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %17, i1 false), !dbg !3091
  br label %if.done, !dbg !3091

if.done:                                          ; preds = %if.then, %entry
  %18 = load i64, i64* %4, align 8, !dbg !3094
  ret i64 %18, !dbg !3094
}

define internal void @runtime.make_slice-11548({ { i8*, i64 }, i8 }* noalias sret %agg.result, i64 %0, { i64, i64 } %1, %runtime.Source_Code_Location* byval align 8 %2, i8* noalias nocapture nonnull %__.context_ptr) !dbg !3095 {
decls:
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !3098, metadata !DIExpression()), !dbg !3099
  %4 = alloca %runtime.Allocator, align 8
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %2, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3102, metadata !DIExpression()), !dbg !3103
  %5 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !3104
  br label %entry, !dbg !3103

entry:                                            ; preds = %decls
  store i64 %0, i64* %3, align 8
  %6 = bitcast %runtime.Allocator* %4 to { i64, i64 }*
  store { i64, i64 } %1, { i64, i64 }* %6, align 8
  %7 = load %runtime.Allocator, %runtime.Allocator* %4, align 8
  call void @llvm.dbg.value(metadata %runtime.Allocator* %4, metadata !3106, metadata !DIExpression()), !dbg !3107
  %8 = bitcast i8* %__.context_ptr to %runtime.Context*
  %9 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %2, align 8, !dbg !3104
  %10 = bitcast %runtime.Allocator* %4 to { i64, i64 }*, !dbg !3104
  %11 = load { i64, i64 }, { i64, i64 }* %10, align 8, !dbg !3104
  %12 = bitcast { { i8*, i64 }, i8 }* %5 to i8*, !dbg !3104
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i1 false), !dbg !3104
  %13 = bitcast %runtime.Context* %8 to i8*, !dbg !3104
  call void @runtime.make_aligned-11845({ { i8*, i64 }, i8 }* sret %5, i64 %0, i64 1, { i64, i64 } %11, %runtime.Source_Code_Location* byval %2, i8* %13), !dbg !3104
  %14 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %5, align 8, !dbg !3104
  %15 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %5, i32 0, i32 0, !dbg !3104
  %16 = load { i8*, i64 }, { i8*, i64 }* %15, align 8, !dbg !3104
  %17 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %5, i32 0, i32 1, !dbg !3104
  %18 = load i8, i8* %17, align 1, !dbg !3104
  %19 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3104
  %20 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3104
  store { i8*, i64 } %16, { i8*, i64 }* %19, align 8, !dbg !3104
  store i8 %18, i8* %20, align 1, !dbg !3104
  ret void, !dbg !3104
}

define internal void @runtime.make_aligned-11845({ { i8*, i64 }, i8 }* noalias sret %agg.result, i64 %0, i64 %1, { i64, i64 } %2, %runtime.Source_Code_Location* byval align 8 %3, i8* noalias nocapture nonnull %__.context_ptr) !dbg !3108 {
decls:
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3110
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3112
  %6 = alloca %runtime.Allocator, align 8
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %3, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3115, metadata !DIExpression()), !dbg !3116
  %7 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !3117
  %8 = alloca { i8*, i64 }, align 8, !dbg !3117
  %9 = alloca i8, align 1, !dbg !3117
  %10 = alloca %runtime.Raw_Slice, align 8, !dbg !3119
  %11 = alloca %runtime.Raw_Slice, align 8, !dbg !3119
  br label %entry, !dbg !3116

entry:                                            ; preds = %decls
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = bitcast %runtime.Allocator* %6 to { i64, i64 }*
  store { i64, i64 } %2, { i64, i64 }* %12, align 8
  %13 = load %runtime.Allocator, %runtime.Allocator* %6, align 8
  call void @llvm.dbg.value(metadata %runtime.Allocator* %6, metadata !3120, metadata !DIExpression()), !dbg !3121
  %14 = bitcast i8* %__.context_ptr to %runtime.Context*
  %15 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %3, align 8, !dbg !3122
  call void @runtime.make_slice_error_loc(%runtime.Source_Code_Location* byval %3, i64 %0), !dbg !3122
  %16 = mul i64 1, %0, !dbg !3117
  %17 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %3, align 8, !dbg !3117
  %18 = bitcast %runtime.Allocator* %6 to { i64, i64 }*, !dbg !3117
  %19 = load { i64, i64 }, { i64, i64 }* %18, align 8, !dbg !3117
  %20 = bitcast { { i8*, i64 }, i8 }* %7 to i8*, !dbg !3117
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 24, i1 false), !dbg !3117
  %21 = bitcast %runtime.Context* %14 to i8*, !dbg !3117
  call void @runtime.mem_alloc_bytes({ { i8*, i64 }, i8 }* sret %7, i64 %16, i64 %1, { i64, i64 } %19, %runtime.Source_Code_Location* byval %3, i8* %21), !dbg !3117
  %22 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, align 8, !dbg !3117
  %23 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 0, !dbg !3117
  %24 = load { i8*, i64 }, { i8*, i64 }* %23, align 8, !dbg !3117
  %25 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %7, i32 0, i32 1, !dbg !3117
  %26 = load i8, i8* %25, align 1, !dbg !3117
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %8, metadata !3123, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3124, metadata !DIExpression()), !dbg !3125
  store { i8*, i64 } %24, { i8*, i64 }* %8, align 8, !dbg !3117
  store i8 %26, i8* %9, align 1, !dbg !3117
  %27 = load { i8*, i64 }, { i8*, i64 }* %8, align 8, !dbg !3126
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0, !dbg !3126
  %29 = load i8*, i8** %28, align 8, !dbg !3126
  %30 = icmp eq i8* %29, null, !dbg !3126
  %31 = zext i1 %30 to i8, !dbg !3126
  %32 = icmp ne i8 %31, 0, !dbg !3126
  br i1 %32, label %cmp.and, label %if.done, !dbg !3126

cmp.and:                                          ; preds = %entry
  br i1 true, label %if.then, label %if.done, !dbg !3126

if.then:                                          ; preds = %cmp.and
  %33 = load i8, i8* %9, align 1, !dbg !3127
  %34 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3127
  %35 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3127
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %34, align 8, !dbg !3127
  store i8 %33, i8* %35, align 1, !dbg !3127
  ret void, !dbg !3127

if.done:                                          ; preds = %cmp.and, %entry
  %36 = bitcast %runtime.Raw_Slice* %10 to i8*, !dbg !3119
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 16, i1 false), !dbg !3119
  store %runtime.Raw_Slice zeroinitializer, %runtime.Raw_Slice* %10, align 8, !dbg !3119
  %37 = load { i8*, i64 }, { i8*, i64 }* %8, align 8, !dbg !3119
  %38 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0, !dbg !3119
  %39 = load i8*, i8** %38, align 8, !dbg !3119
  %40 = getelementptr inbounds %runtime.Raw_Slice, %runtime.Raw_Slice* %10, i32 0, i32 0, !dbg !3119
  store i8* %39, i8** %40, align 8, !dbg !3119
  %41 = getelementptr inbounds %runtime.Raw_Slice, %runtime.Raw_Slice* %10, i32 0, i32 1, !dbg !3119
  store i64 %0, i64* %41, align 8, !dbg !3119
  %42 = load %runtime.Raw_Slice, %runtime.Raw_Slice* %10, align 8, !dbg !3119
  call void @llvm.dbg.declare(metadata %runtime.Raw_Slice* %11, metadata !3130, metadata !DIExpression()), !dbg !3119
  store %runtime.Raw_Slice %42, %runtime.Raw_Slice* %11, align 8, !dbg !3119
  %43 = load %runtime.Raw_Slice, %runtime.Raw_Slice* %11, align 8, !dbg !3134
  %44 = bitcast %runtime.Raw_Slice* %11 to { i8*, i64 }*, !dbg !3134
  %45 = load { i8*, i64 }, { i8*, i64 }* %44, align 8, !dbg !3134
  %46 = load i8, i8* %9, align 1, !dbg !3134
  %47 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3134
  %48 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3134
  store { i8*, i64 } %45, { i8*, i64 }* %47, align 8, !dbg !3134
  store i8 %46, i8* %48, align 1, !dbg !3134
  ret void, !dbg !3134
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

define internal i64 @runtime.alloc_from_memory_block.calc_alignment_offset-0(%runtime.Memory_Block* %0, i64 %1) !dbg !3135 {
decls:
  %2 = alloca %runtime.Memory_Block*, align 8
  call void @llvm.dbg.value(metadata %runtime.Memory_Block* %0, metadata !3138, metadata !DIExpression()), !dbg !3139
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()), !dbg !3141
  %4 = alloca i64, align 8, !dbg !3142
  %5 = alloca i8*, align 8, !dbg !3144
  %6 = alloca i64, align 8, !dbg !3144
  %7 = alloca i64, align 8, !dbg !3145
  br label %entry, !dbg !3146

entry:                                            ; preds = %decls
  store %runtime.Memory_Block* %0, %runtime.Memory_Block** %2, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3147, metadata !DIExpression()), !dbg !3142
  store i64 0, i64* %4, align 8, !dbg !3142
  %8 = load %runtime.Memory_Block*, %runtime.Memory_Block** %2, align 8, !dbg !3144
  %9 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %8, i32 0, i32 3, !dbg !3144
  %10 = load i64, i64* %9, align 8, !dbg !3144
  %11 = load %runtime.Memory_Block*, %runtime.Memory_Block** %2, align 8, !dbg !3144
  %12 = getelementptr inbounds %runtime.Memory_Block, %runtime.Memory_Block* %11, i32 0, i32 2, !dbg !3144
  %13 = load i8*, i8** %12, align 8, !dbg !3144
  %14 = getelementptr i8, i8* %13, i64 %10, !dbg !3144
  store i8* %14, i8** %5, align 8, !dbg !3144
  %15 = load i8*, i8** %5, align 8, !dbg !3144
  %16 = ptrtoint i8* %15 to i64, !dbg !3144
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3148, metadata !DIExpression()), !dbg !3144
  store i64 %16, i64* %6, align 8, !dbg !3144
  %17 = sub i64 %1, 1, !dbg !3145
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3149, metadata !DIExpression()), !dbg !3145
  store i64 %17, i64* %7, align 8, !dbg !3145
  %18 = load i64, i64* %6, align 8, !dbg !3150
  %19 = load i64, i64* %7, align 8, !dbg !3150
  %20 = and i64 %18, %19, !dbg !3150
  %21 = icmp ne i64 %20, 0, !dbg !3150
  %22 = zext i1 %21 to i8, !dbg !3150
  %23 = icmp ne i8 %22, 0, !dbg !3150
  br i1 %23, label %if.then, label %if.done, !dbg !3150

if.then:                                          ; preds = %entry
  %24 = load i64, i64* %6, align 8, !dbg !3151
  %25 = load i64, i64* %7, align 8, !dbg !3151
  %26 = and i64 %24, %25, !dbg !3151
  %27 = sub i64 %1, %26, !dbg !3151
  store i64 %27, i64* %4, align 8, !dbg !3151
  br label %if.done, !dbg !3151

if.done:                                          ; preds = %if.then, %entry
  %28 = load i64, i64* %4, align 8, !dbg !3154
  ret i64 %28, !dbg !3154
}

define internal i64 @runtime.arena_alloc.align_forward_uint-0(i64 %0, i64 %1) !dbg !3155 {
decls:
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !3158, metadata !DIExpression()), !dbg !3159
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !3160, metadata !DIExpression()), !dbg !3161
  %4 = alloca i64, align 8, !dbg !3162
  %5 = alloca i64, align 8, !dbg !3164
  br label %entry, !dbg !3165

entry:                                            ; preds = %decls
  store i64 %0, i64* %2, align 8
  store i64 %1, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3166, metadata !DIExpression()), !dbg !3162
  store i64 %0, i64* %4, align 8, !dbg !3162
  %6 = load i64, i64* %4, align 8, !dbg !3164
  %7 = sub i64 %1, 1, !dbg !3164
  %8 = and i64 %6, %7, !dbg !3164
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3167, metadata !DIExpression()), !dbg !3164
  store i64 %8, i64* %5, align 8, !dbg !3164
  %9 = load i64, i64* %5, align 8, !dbg !3168
  %10 = icmp ne i64 %9, 0, !dbg !3168
  %11 = zext i1 %10 to i8, !dbg !3168
  %12 = icmp ne i8 %11, 0, !dbg !3168
  br i1 %12, label %if.then, label %if.done, !dbg !3168

if.then:                                          ; preds = %entry
  %13 = load i64, i64* %5, align 8, !dbg !3169
  %14 = sub i64 %1, %13, !dbg !3169
  %15 = load i64, i64* %4, align 8, !dbg !3169
  %16 = add i64 %15, %14, !dbg !3169
  store i64 %16, i64* %4, align 8, !dbg !3169
  br label %if.done, !dbg !3169

if.done:                                          ; preds = %if.then, %entry
  %17 = load i64, i64* %4, align 8, !dbg !3172
  ret i64 %17, !dbg !3172
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #8

; Function Attrs: cold
define internal void @runtime.make_slice_error_loc.handle_error-0(%runtime.Source_Code_Location* byval align 8 %0, i64 %1) #9 !dbg !3173 {
decls:
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %0, metadata !3174, metadata !DIExpression()), !dbg !3175
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !3176, metadata !DIExpression()), !dbg !3177
  br label %entry, !dbg !3178

entry:                                            ; preds = %decls
  store i64 %1, i64* %2, align 8
  %3 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %0, align 8, !dbg !3179
  call void @runtime.print_caller_location(%runtime.Source_Code_Location* byval %0), !dbg !3179
  %4 = call i64 @runtime.print_string(%..string { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"csbs$9a", i64 0, i64 0), i64 32 }), !dbg !3181
  call void @runtime.print_i64(i64 %1), !dbg !3182
  %5 = call i64 @runtime.print_byte(i8 10), !dbg !3183
  call void @runtime.bounds_trap(), !dbg !3184
  unreachable, !dbg !3184
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.inline.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64 immarg, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

define internal void @os.heap_allocator_proc.aligned_alloc-0({ { i8*, i64 }, i8 }* noalias sret %agg.result, i64 %0, i64 %1, i8* %2, i1 zeroext %3, i8* noalias nocapture nonnull %__.context_ptr) !dbg !3185 {
decls:
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !3188, metadata !DIExpression()), !dbg !3189
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !3190, metadata !DIExpression()), !dbg !3191
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %2, metadata !3192, metadata !DIExpression()), !dbg !3193
  %7 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3194, metadata !DIExpression()), !dbg !3195
  %8 = alloca i64, align 8, !dbg !3196
  %9 = alloca i64, align 8, !dbg !3198
  %10 = alloca i8*, align 8, !dbg !3199
  %11 = alloca i8*, align 8, !dbg !3200
  %12 = alloca i8*, align 8, !dbg !3203
  %13 = alloca i64, align 8, !dbg !3204
  %14 = alloca i64, align 8, !dbg !3205
  %15 = alloca i64, align 8, !dbg !3206
  br label %entry, !dbg !3195

entry:                                            ; preds = %decls
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = zext i1 %3 to i8
  store i8 %16, i8* %7, align 1
  call void @llvm.dbg.value(metadata i8 %16, metadata !3207, metadata !DIExpression()), !dbg !3208
  %17 = bitcast i8* %__.context_ptr to %runtime.Context*
  %18 = icmp sgt i64 %1, 8, !dbg !3196
  %19 = select i1 %18, i64 %1, i64 8, !dbg !3196
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3209, metadata !DIExpression()), !dbg !3196
  store i64 %19, i64* %8, align 8, !dbg !3196
  %20 = load i64, i64* %8, align 8, !dbg !3198
  %21 = add i64 %0, %20, !dbg !3198
  %22 = sub i64 %21, 1, !dbg !3198
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3210, metadata !DIExpression()), !dbg !3198
  store i64 %22, i64* %9, align 8, !dbg !3198
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3211, metadata !DIExpression()), !dbg !3199
  store i8* null, i8** %10, align 8, !dbg !3199
  %23 = icmp ne i8* %2, null, !dbg !3212
  %24 = zext i1 %23 to i8, !dbg !3212
  %25 = icmp ne i8 %24, 0, !dbg !3212
  br i1 %25, label %if.then, label %if.else, !dbg !3212

if.then:                                          ; preds = %entry
  %26 = bitcast i8* %2 to i8**, !dbg !3200
  %27 = getelementptr i8*, i8** %26, i64 -1, !dbg !3200
  %28 = load i8*, i8** %27, align 8, !dbg !3200
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3213, metadata !DIExpression()), !dbg !3200
  store i8* %28, i8** %11, align 8, !dbg !3200
  %29 = load i8*, i8** %11, align 8, !dbg !3214
  %30 = load i64, i64* %9, align 8, !dbg !3214
  %31 = add i64 %30, 8, !dbg !3214
  %32 = bitcast %runtime.Context* %17 to i8*, !dbg !3214
  %33 = call i8* @os.heap_resize(i8* %29, i64 %31, i8* %32), !dbg !3214
  store i8* %33, i8** %10, align 8, !dbg !3214
  br label %if.done, !dbg !3214

if.else:                                          ; preds = %entry
  %34 = load i64, i64* %9, align 8, !dbg !3215
  %35 = add i64 %34, 8, !dbg !3215
  %36 = icmp ne i8 %16, 0, !dbg !3215
  %37 = bitcast %runtime.Context* %17 to i8*, !dbg !3215
  %38 = call i8* @os.heap_alloc(i64 %35, i1 zeroext %36, i8* %37), !dbg !3215
  store i8* %38, i8** %10, align 8, !dbg !3215
  br label %if.done, !dbg !3215

if.done:                                          ; preds = %if.else, %if.then
  %39 = load i8*, i8** %10, align 8, !dbg !3203
  %40 = getelementptr i8, i8* %39, i64 8, !dbg !3203
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3217, metadata !DIExpression()), !dbg !3203
  store i8* %40, i8** %12, align 8, !dbg !3203
  %41 = load i8*, i8** %12, align 8, !dbg !3204
  %42 = ptrtoint i8* %41 to i64, !dbg !3204
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3218, metadata !DIExpression()), !dbg !3204
  store i64 %42, i64* %13, align 8, !dbg !3204
  %43 = load i64, i64* %13, align 8, !dbg !3205
  %44 = sub i64 %43, 1, !dbg !3205
  %45 = load i64, i64* %8, align 8, !dbg !3205
  %46 = add i64 %44, %45, !dbg !3205
  %47 = load i64, i64* %8, align 8, !dbg !3205
  %48 = sub i64 0, %47, !dbg !3205
  %49 = and i64 %46, %48, !dbg !3205
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3219, metadata !DIExpression()), !dbg !3205
  store i64 %49, i64* %14, align 8, !dbg !3205
  %50 = load i64, i64* %14, align 8, !dbg !3206
  %51 = load i64, i64* %13, align 8, !dbg !3206
  %52 = sub i64 %50, %51, !dbg !3206
  call void @llvm.dbg.declare(metadata i64* %15, metadata !3220, metadata !DIExpression()), !dbg !3206
  store i64 %52, i64* %15, align 8, !dbg !3206
  %53 = load i64, i64* %15, align 8, !dbg !3221
  %54 = add i64 %0, %53, !dbg !3221
  %55 = load i64, i64* %9, align 8, !dbg !3221
  %56 = icmp sgt i64 %54, %55, !dbg !3221
  %57 = zext i1 %56 to i8, !dbg !3221
  %58 = icmp ne i8 %57, 0, !dbg !3221
  br i1 %58, label %if.then1, label %cmp.or, !dbg !3221

cmp.or:                                           ; preds = %if.done
  %59 = load i8*, i8** %10, align 8, !dbg !3221
  %60 = icmp eq i8* %59, null, !dbg !3221
  %61 = zext i1 %60 to i8, !dbg !3221
  %62 = icmp ne i8 %61, 0, !dbg !3221
  br i1 %62, label %if.then1, label %if.done2, !dbg !3221

if.then1:                                         ; preds = %cmp.or, %if.done
  %63 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3222
  %64 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3222
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %63, align 8, !dbg !3222
  store i8 1, i8* %64, align 1, !dbg !3222
  ret void, !dbg !3222

if.done2:                                         ; preds = %cmp.or
  %65 = load i64, i64* %14, align 8, !dbg !3225
  %66 = inttoptr i64 %65 to i8*, !dbg !3225
  store i8* %66, i8** %12, align 8, !dbg !3225
  %67 = load i8*, i8** %12, align 8, !dbg !3226
  %68 = bitcast i8* %67 to i8**, !dbg !3226
  %69 = getelementptr i8*, i8** %68, i64 -1, !dbg !3226
  %70 = load i8*, i8** %10, align 8, !dbg !3226
  store i8* %70, i8** %69, align 8, !dbg !3226
  %71 = load i8*, i8** %12, align 8, !dbg !3227
  %72 = call { i8*, i64 } @mem.byte_slice(i8* %71, i64 %0), !dbg !3227
  %73 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3227
  %74 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3227
  store { i8*, i64 } %72, { i8*, i64 }* %73, align 8, !dbg !3227
  store i8 0, i8* %74, align 1, !dbg !3227
  ret void, !dbg !3227
}

define internal void @os.heap_allocator_proc.aligned_free-1(i8* %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !3228 {
decls:
  %1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3231, metadata !DIExpression()), !dbg !3232
  br label %entry, !dbg !3232

entry:                                            ; preds = %decls
  store i8* %0, i8** %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  %3 = icmp ne i8* %0, null, !dbg !3233
  %4 = zext i1 %3 to i8, !dbg !3233
  %5 = icmp ne i8 %4, 0, !dbg !3233
  br i1 %5, label %if.then, label %if.done, !dbg !3233

if.then:                                          ; preds = %entry
  %6 = bitcast i8* %0 to i8**, !dbg !3235
  %7 = getelementptr i8*, i8** %6, i64 -1, !dbg !3235
  %8 = load i8*, i8** %7, align 8, !dbg !3235
  %9 = bitcast %runtime.Context* %2 to i8*, !dbg !3235
  call void @os.heap_free(i8* %8, i8* %9), !dbg !3235
  br label %if.done, !dbg !3235

if.done:                                          ; preds = %if.then, %entry
  ret void, !dbg !3238
}

define internal void @os.heap_allocator_proc.aligned_resize-2({ { i8*, i64 }, i8 }* noalias sret %agg.result, i8* %0, i64 %1, i64 %2, i64 %3, i8* noalias nocapture nonnull %__.context_ptr) !dbg !3239 {
decls:
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3245, metadata !DIExpression()), !dbg !3246
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3248
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %2, metadata !3249, metadata !DIExpression()), !dbg !3250
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !3251, metadata !DIExpression()), !dbg !3252
  %8 = alloca { i8*, i64 }, align 8
  %9 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3253, metadata !DIExpression()), !dbg !3254
  %10 = alloca { { i8*, i64 }, i8 }, align 8, !dbg !3255
  %11 = alloca { i8*, i64 }, align 8, !dbg !3257
  %12 = alloca i8*, align 8, !dbg !3257
  br label %entry, !dbg !3254

entry:                                            ; preds = %decls
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 %3, i64* %7, align 8
  %13 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0
  call void @llvm.dbg.declare(metadata { i8*, i64 }* %8, metadata !3260, metadata !DIExpression()), !dbg !3261
  %14 = bitcast { i8*, i64 }* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i8 0, i8* %9, align 1
  %16 = bitcast i8* %__.context_ptr to %runtime.Context*
  %17 = icmp eq i8* %0, null, !dbg !3264
  %18 = zext i1 %17 to i8, !dbg !3264
  %19 = icmp ne i8 %18, 0, !dbg !3264
  br i1 %19, label %if.then, label %if.done, !dbg !3264

if.then:                                          ; preds = %entry
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %8, align 8, !dbg !3265
  store i8 0, i8* %9, align 1, !dbg !3265
  %20 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3265
  %21 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3265
  store { i8*, i64 } zeroinitializer, { i8*, i64 }* %20, align 8, !dbg !3265
  store i8 0, i8* %21, align 1, !dbg !3265
  ret void, !dbg !3265

if.done:                                          ; preds = %entry
  %22 = bitcast { { i8*, i64 }, i8 }* %10 to i8*, !dbg !3255
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 24, i1 false), !dbg !3255
  %23 = bitcast %runtime.Context* %16 to i8*, !dbg !3255
  call void @os.heap_allocator_proc.aligned_alloc-0({ { i8*, i64 }, i8 }* sret %10, i64 %2, i64 %3, i8* %0, i1 zeroext true, i8* %23), !dbg !3255
  %24 = load { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %10, align 8, !dbg !3255
  %25 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %10, i32 0, i32 0, !dbg !3255
  %26 = load { i8*, i64 }, { i8*, i64 }* %25, align 8, !dbg !3255
  %27 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %10, i32 0, i32 1, !dbg !3255
  %28 = load i8, i8* %27, align 1, !dbg !3255
  %29 = icmp eq i8 %28, 0, !dbg !3255
  br i1 %29, label %or_return.continue, label %or_return.return, !dbg !3255

or_return.return:                                 ; preds = %if.done
  store i8 %28, i8* %9, align 1, !dbg !3255
  %30 = load { i8*, i64 }, { i8*, i64 }* %8, align 8, !dbg !3255
  %31 = load i8, i8* %9, align 1, !dbg !3255
  store { i8*, i64 } %30, { i8*, i64 }* %8, align 8, !dbg !3255
  store i8 %31, i8* %9, align 1, !dbg !3255
  %32 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3255
  %33 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3255
  store { i8*, i64 } %30, { i8*, i64 }* %32, align 8, !dbg !3255
  store i8 %31, i8* %33, align 1, !dbg !3255
  ret void, !dbg !3255

or_return.continue:                               ; preds = %if.done
  store { i8*, i64 } %26, { i8*, i64 }* %8, align 8, !dbg !3255
  %34 = icmp sgt i64 %2, %1, !dbg !3268
  %35 = zext i1 %34 to i8, !dbg !3268
  %36 = icmp ne i8 %35, 0, !dbg !3268
  br i1 %36, label %if.then1, label %if.done2, !dbg !3268

if.then1:                                         ; preds = %or_return.continue
  %37 = load { i8*, i64 }, { i8*, i64 }* %8, align 8, !dbg !3257
  %38 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1, !dbg !3257
  %39 = load i64, i64* %38, align 8, !dbg !3257
  call void @runtime.slice_expr_error_lo_hi(%..string { i8* getelementptr inbounds ([43 x i8], [43 x i8]* @"csbs$9b", i64 0, i64 0), i64 42 }, i32 222, i32 41, i64 %1, i64 %39, i64 %39), !dbg !3257
  %40 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0, !dbg !3257
  %41 = load i8*, i8** %40, align 8, !dbg !3257
  %42 = getelementptr i8, i8* %41, i64 %1, !dbg !3257
  %43 = sub i64 %39, %1, !dbg !3257
  %44 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0, !dbg !3257
  store i8* %42, i8** %44, align 8, !dbg !3257
  %45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 1, !dbg !3257
  store i64 %43, i64* %45, align 8, !dbg !3257
  %46 = load { i8*, i64 }, { i8*, i64 }* %11, align 8, !dbg !3257
  %47 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0, !dbg !3257
  %48 = load i8*, i8** %47, align 8, !dbg !3257
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3269, metadata !DIExpression()), !dbg !3257
  store i8* %48, i8** %12, align 8, !dbg !3257
  %49 = load i8*, i8** %12, align 8, !dbg !3270
  %50 = sub i64 %2, %1, !dbg !3270
  %51 = call i8* @mem.zero(i8* %49, i64 %50), !dbg !3270
  br label %if.done2, !dbg !3270

if.done2:                                         ; preds = %if.then1, %or_return.continue
  %52 = load { i8*, i64 }, { i8*, i64 }* %8, align 8, !dbg !3271
  %53 = load i8, i8* %9, align 1, !dbg !3271
  store { i8*, i64 } %52, { i8*, i64 }* %8, align 8, !dbg !3271
  store i8 %53, i8* %9, align 1, !dbg !3271
  %54 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 0, !dbg !3271
  %55 = getelementptr inbounds { { i8*, i64 }, i8 }, { { i8*, i64 }, i8 }* %agg.result, i32 0, i32 1, !dbg !3271
  store { i8*, i64 } %52, { i8*, i64 }* %54, align 8, !dbg !3271
  store i8 %53, i8* %55, align 1, !dbg !3271
  ret void, !dbg !3271
}

; Function Attrs: cold
define internal void @runtime.assert.internal-0(%..string %0, %runtime.Source_Code_Location* byval align 8 %1, i8* noalias nocapture nonnull %__.context_ptr) #9 !dbg !3272 {
decls:
  %2 = alloca %..string, align 8
  call void @llvm.dbg.value(metadata %..string %0, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.declare(metadata %runtime.Source_Code_Location* %1, metadata !3277, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !3279, metadata !DIExpression()), !dbg !3280
  %3 = alloca i8*, align 8, !dbg !3281
  br label %entry, !dbg !3280

entry:                                            ; preds = %decls
  store %..string %0, %..string* %2, align 8
  %4 = bitcast i8* %__.context_ptr to %runtime.Context*
  %5 = getelementptr inbounds %runtime.Context, %runtime.Context* %4, i32 0, i32 2, !dbg !3281
  %6 = load i8*, i8** %5, align 8, !dbg !3281
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3283, metadata !DIExpression()), !dbg !3281
  store i8* %6, i8** %3, align 8, !dbg !3281
  %7 = load i8*, i8** %3, align 8, !dbg !3284
  %8 = icmp eq i8* %7, null, !dbg !3284
  %9 = zext i1 %8 to i8, !dbg !3284
  %10 = icmp ne i8 %9, 0, !dbg !3284
  br i1 %10, label %if.then, label %if.done, !dbg !3284

if.then:                                          ; preds = %entry
  store i8* bitcast (void (%..string, %..string, %runtime.Source_Code_Location*, i8*)* @runtime.default_assertion_failure_proc to i8*), i8** %3, align 8, !dbg !3285
  br label %if.done, !dbg !3285

if.done:                                          ; preds = %if.then, %entry
  %11 = load i8*, i8** %3, align 8, !dbg !3288
  %12 = load %runtime.Source_Code_Location, %runtime.Source_Code_Location* %1, align 8, !dbg !3288
  %13 = bitcast %runtime.Context* %4 to i8*, !dbg !3288
  %14 = bitcast i8* %11 to void (%..string, %..string, %runtime.Source_Code_Location*, i8*)*, !dbg !3288
  call void %14(%..string { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @"csbs$9c", i64 0, i64 0), i64 17 }, %..string %0, %runtime.Source_Code_Location* byval %1, i8* %13), !dbg !3288
  unreachable, !dbg !3288
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #7

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readonly }
attributes #3 = { argmemonly nounwind willreturn writeonly }
attributes #4 = { alwaysinline }
attributes #5 = { noreturn }
attributes #6 = { noinline }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { cold }

!llvm.module.flags = !{!92, !93}
!llvm.dbg.cu = !{!94}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "type_table", scope: !2, file: !2, line: 271, type: !3, isLocal: true, isDefinition: true, align: 64)
!2 = !DIFile(filename: "core.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!3 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]Type_Info", size: 128, align: 64, elements: !4)
!4 = !{!5, !9}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2, file: !2, line: 1, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "rawptr", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 1)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "void", baseType: !8, align: 8)
!8 = !DIBasicType(name: "void", size: 8, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2, file: !2, line: 1, baseType: !10, size: 64, align: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int", baseType: !11, align: 64)
!11 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "args__", scope: !2, file: !2, line: 273, type: !14, isLocal: true, isDefinition: true, align: 64)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]cstring", size: 128, align: 64, elements: !4)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "global_default_temp_allocator_data", scope: !17, file: !17, line: 19, type: !18, isLocal: true, isDefinition: true, align: 64)
!17 = !DIFile(filename: "core_builtin.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Default_Temp_Allocator", file: !19, line: 23, size: 448, align: 64, elements: !20)
!19 = !DIFile(filename: "default_temporary_allocator.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "arena", file: !19, baseType: !22, size: 448, align: 64)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Arena", file: !23, line: 15, size: 448, align: 64, elements: !24)
!23 = !DIFile(filename: "default_allocators_arena.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!24 = !{!25, !70, !81, !82, !83, !84}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "backing_allocator", file: !23, baseType: !26, size: 128, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Allocator", file: !2, line: 330, size: 128, align: 64, elements: !27)
!27 = !{!28, !69}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "procedure", file: !2, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Allocator_Proc", scope: !2, file: !2, line: 326, baseType: !30, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc(rawptr, Allocator_Mode, int, int, rawptr, int, Source_Code_Location) -> ([]u8, Allocator_Error)", baseType: !31, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64, dwarfAddressSpace: 0)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !6, !48, !10, !10, !6, !10, !57}
!34 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !35)
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, baseType: !37, size: 128, align: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]u8", size: 128, align: 64, elements: !4)
!38 = !DIDerivedType(tag: DW_TAG_member, baseType: !39, size: 8, align: 8, offset: 128)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Allocator_Error", scope: !2, file: !2, baseType: !40, size: 8, align: 8, elements: !42)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", baseType: !41, align: 8)
!41 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "None", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "Out_Of_Memory", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "Invalid_Pointer", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "Invalid_Argument", value: 3, isUnsigned: true)
!47 = !DIEnumerator(name: "Mode_Not_Implemented", value: 4, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Allocator_Mode", scope: !2, file: !2, baseType: !40, size: 8, align: 8, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56}
!50 = !DIEnumerator(name: "Alloc", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "Free", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "Free_All", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "Resize", value: 3, isUnsigned: true)
!54 = !DIEnumerator(name: "Query_Features", value: 4, isUnsigned: true)
!55 = !DIEnumerator(name: "Query_Info", value: 5, isUnsigned: true)
!56 = !DIEnumerator(name: "Alloc_Non_Zeroed", value: 6, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Source_Code_Location", file: !2, line: 291, size: 320, align: 64, elements: !58)
!58 = !{!59, !64, !67, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "file_path", file: !2, baseType: !60, size: 128, align: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !2, file: !2, line: 1, size: 128, align: 64, elements: !61)
!61 = !{!62, !9}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2, file: !2, line: 1, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64, dwarfAddressSpace: 0)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "line", file: !2, baseType: !65, size: 32, align: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "i32", baseType: !66, align: 32)
!66 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "column", file: !2, baseType: !65, size: 32, align: 32, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "procedure", file: !2, baseType: !60, size: 128, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "data", file: !2, baseType: !6, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "curr_block", file: !23, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64, dwarfAddressSpace: 0)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Memory_Block", file: !23, line: 7, size: 384, align: 64, elements: !73)
!73 = !{!74, !75, !76, !77, !80}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "prev", file: !23, baseType: !71, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", file: !23, baseType: !26, size: 128, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "base", file: !23, baseType: !63, size: 64, align: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "used", file: !23, baseType: !78, size: 64, align: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", baseType: !79, align: 64)
!79 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", file: !23, baseType: !78, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "total_used", file: !23, baseType: !78, size: 64, align: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "total_capacity", file: !23, baseType: !78, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "minimum_block_size", file: !23, baseType: !78, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "temp_count", file: !23, baseType: !78, size: 64, align: 64, offset: 384)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "stderr", scope: !87, file: !87, line: 615, type: !88, isLocal: true, isDefinition: true, align: 32)
!87 = !DIFile(filename: "os_darwin.odin", directory: "/Users/tarvydas/tools/Odin/core/os")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "Handle", scope: !87, file: !87, line: 11, baseType: !65, align: 32)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "_INTEGER_DIGITS_VAR", scope: !91, file: !91, line: 6, type: !60, isLocal: true, isDefinition: true, align: 64)
!91 = !DIFile(filename: "print.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 2, !"Dwarf Version", i32 2}
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "odin", isOptimized: false, runtimeVersion: 1, emissionKind: FullDebug, enums: !96, globals: !165, splitDebugInlining: false)
!95 = !DIFile(filename: "main.odin", directory: "/Users/tarvydas/quicklisp/local-projects/odinasm")
!96 = !{!97, !109, !117, !124, !128, !97, !109, !124, !39, !39, !39, !39, !48, !39, !39, !39, !39, !132, !39, !48, !39, !48, !39, !39, !39, !39, !39, !48, !39, !48, !39, !39, !132, !48, !39, !39, !48, !39, !39, !39, !39, !48, !139, !132, !132, !143, !143, !148, !160}
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Odin_OS_Type", baseType: !10, size: 64, align: 64, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!99 = !DIEnumerator(name: "Unknown", value: 0)
!100 = !DIEnumerator(name: "Windows", value: 1)
!101 = !DIEnumerator(name: "Darwin", value: 2)
!102 = !DIEnumerator(name: "Linux", value: 3)
!103 = !DIEnumerator(name: "Essence", value: 4)
!104 = !DIEnumerator(name: "FreeBSD", value: 5)
!105 = !DIEnumerator(name: "OpenBSD", value: 6)
!106 = !DIEnumerator(name: "WASI", value: 7)
!107 = !DIEnumerator(name: "JS", value: 8)
!108 = !DIEnumerator(name: "Freestanding", value: 9)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Odin_Arch_Type", baseType: !10, size: 64, align: 64, elements: !110)
!110 = !{!99, !111, !112, !113, !114, !115, !116}
!111 = !DIEnumerator(name: "amd64", value: 1)
!112 = !DIEnumerator(name: "i386", value: 2)
!113 = !DIEnumerator(name: "arm32", value: 3)
!114 = !DIEnumerator(name: "arm64", value: 4)
!115 = !DIEnumerator(name: "wasm32", value: 5)
!116 = !DIEnumerator(name: "wasm64", value: 6)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Odin_Build_Mode_Type", baseType: !10, size: 64, align: 64, elements: !118)
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "Executable", value: 0)
!120 = !DIEnumerator(name: "Dynamic", value: 1)
!121 = !DIEnumerator(name: "Object", value: 2)
!122 = !DIEnumerator(name: "Assembly", value: 3)
!123 = !DIEnumerator(name: "LLVM_IR", value: 4)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Odin_Endian_Type", baseType: !10, size: 64, align: 64, elements: !125)
!125 = !{!99, !126, !127}
!126 = !DIEnumerator(name: "Little", value: 1)
!127 = !DIEnumerator(name: "Big", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Odin_Error_Pos_Style_Type", baseType: !10, size: 64, align: 64, elements: !129)
!129 = !{!130, !131}
!130 = !DIEnumerator(name: "Default", value: 0)
!131 = !DIEnumerator(name: "Unix", value: 1)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Logger_Level", scope: !2, file: !2, baseType: !78, size: 64, align: 64, elements: !133)
!133 = !{!134, !135, !136, !137, !138}
!134 = !DIEnumerator(name: "Debug", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "Info", value: 10, isUnsigned: true)
!136 = !DIEnumerator(name: "Warning", value: 20, isUnsigned: true)
!137 = !DIEnumerator(name: "Error", value: 30, isUnsigned: true)
!138 = !DIEnumerator(name: "Fatal", value: 40, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Type_Info_Flag", scope: !2, file: !2, baseType: !40, size: 8, align: 8, elements: !140)
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "Comparable", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "Simple_Compare", value: 1, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Platform_Endianness", scope: !2, file: !2, baseType: !40, size: 8, align: 8, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "Platform", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "Little", value: 1, isUnsigned: true)
!147 = !DIEnumerator(name: "Big", value: 2, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Calling_Convention", scope: !2, file: !2, baseType: !40, size: 8, align: 8, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!150 = !DIEnumerator(name: "Invalid", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "Odin", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "Contextless", value: 2, isUnsigned: true)
!153 = !DIEnumerator(name: "CDecl", value: 3, isUnsigned: true)
!154 = !DIEnumerator(name: "Std_Call", value: 4, isUnsigned: true)
!155 = !DIEnumerator(name: "Fast_Call", value: 5, isUnsigned: true)
!156 = !DIEnumerator(name: "None", value: 6, isUnsigned: true)
!157 = !DIEnumerator(name: "Naked", value: 7, isUnsigned: true)
!158 = !DIEnumerator(name: "Win64", value: 9, isUnsigned: true)
!159 = !DIEnumerator(name: "SysV", value: 10, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Type_Info_Struct_Soa_Kind", scope: !2, file: !2, baseType: !40, size: 8, align: 8, elements: !161)
!161 = !{!43, !162, !163, !164}
!162 = !DIEnumerator(name: "Fixed", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "Slice", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "Dynamic", value: 3, isUnsigned: true)
!165 = !{!0, !12, !15, !85, !89, !166, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !345, !347, !349, !351, !353, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !923, !925, !927, !929, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1045, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1091, !1093, !1095, !1097, !1099, !1101, !1103, !1105, !1107, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1131, !1133, !1135, !1137, !1139, !1141, !1143, !1145, !1147, !1149, !1151, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1171, !1173, !1175, !1177, !1179, !1181, !1183, !1185, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1205, !1207, !1209, !1211, !1213, !1215, !1217, !1219, !1221, !1223, !1225, !1227, !1229, !1231, !1233, !1235, !1237, !1239, !1241, !1243, !1245, !1247, !1249, !1251, !1253, !1255, !1257, !1259, !1261, !1263, !1265, !1267, !1269, !1271, !1273, !1275, !1277, !1279, !1281, !1283, !1285, !1287, !1289, !1291, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1307, !1309, !1311, !1313, !1315, !1317, !1319, !1321, !1323, !1325, !1327, !1329, !1331, !1333, !1335, !1337, !1339, !1341, !1343, !1345, !1347, !1349, !1351, !1353, !1355, !1357, !1359, !1361, !1363, !1365, !1367, !1369, !1371, !1373, !1375}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!167 = distinct !DIGlobalVariable(name: "true", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", baseType: !169, align: 8)
!169 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!171 = distinct !DIGlobalVariable(name: "true", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!173 = distinct !DIGlobalVariable(name: "false", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!175 = distinct !DIGlobalVariable(name: "false", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!177 = distinct !DIGlobalVariable(name: "ODIN_OS", scope: null, type: !97, isLocal: false, isDefinition: true, align: 8)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!179 = distinct !DIGlobalVariable(name: "ODIN_OS", scope: null, type: !97, isLocal: false, isDefinition: true, align: 8)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!181 = distinct !DIGlobalVariable(name: "ODIN_ARCH", scope: null, type: !109, isLocal: false, isDefinition: true, align: 8)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!183 = distinct !DIGlobalVariable(name: "ODIN_ARCH", scope: null, type: !109, isLocal: false, isDefinition: true, align: 8)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!185 = distinct !DIGlobalVariable(name: "ODIN_BUILD_MODE", scope: null, type: !117, isLocal: false, isDefinition: true, align: 8)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!187 = distinct !DIGlobalVariable(name: "ODIN_BUILD_MODE", scope: null, type: !117, isLocal: false, isDefinition: true, align: 8)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!189 = distinct !DIGlobalVariable(name: "ODIN_ENDIAN", scope: null, type: !124, isLocal: false, isDefinition: true, align: 8)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!191 = distinct !DIGlobalVariable(name: "ODIN_ENDIAN", scope: null, type: !124, isLocal: false, isDefinition: true, align: 8)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!193 = distinct !DIGlobalVariable(name: "ODIN_ERROR_POS_STYLE", scope: null, type: !128, isLocal: false, isDefinition: true, align: 8)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!195 = distinct !DIGlobalVariable(name: "ODIN_ERROR_POS_STYLE", scope: null, type: !128, isLocal: false, isDefinition: true, align: 8)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!197 = distinct !DIGlobalVariable(name: "ODIN_DEBUG", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!199 = distinct !DIGlobalVariable(name: "ODIN_DEBUG", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!201 = distinct !DIGlobalVariable(name: "ODIN_DISABLE_ASSERT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!203 = distinct !DIGlobalVariable(name: "ODIN_DISABLE_ASSERT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!205 = distinct !DIGlobalVariable(name: "ODIN_DEFAULT_TO_NIL_ALLOCATOR", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!207 = distinct !DIGlobalVariable(name: "ODIN_DEFAULT_TO_NIL_ALLOCATOR", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!209 = distinct !DIGlobalVariable(name: "ODIN_NO_DYNAMIC_LITERALS", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!211 = distinct !DIGlobalVariable(name: "ODIN_NO_DYNAMIC_LITERALS", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!213 = distinct !DIGlobalVariable(name: "ODIN_NO_CRT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!215 = distinct !DIGlobalVariable(name: "ODIN_NO_CRT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!217 = distinct !DIGlobalVariable(name: "ODIN_USE_SEPARATE_MODULES", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!219 = distinct !DIGlobalVariable(name: "ODIN_USE_SEPARATE_MODULES", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!221 = distinct !DIGlobalVariable(name: "ODIN_TEST", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!223 = distinct !DIGlobalVariable(name: "ODIN_TEST", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!225 = distinct !DIGlobalVariable(name: "ODIN_NO_ENTRY_POINT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!227 = distinct !DIGlobalVariable(name: "ODIN_NO_ENTRY_POINT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!229 = distinct !DIGlobalVariable(name: "ODIN_FOREIGN_ERROR_PROCEDURES", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!231 = distinct !DIGlobalVariable(name: "ODIN_FOREIGN_ERROR_PROCEDURES", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!233 = distinct !DIGlobalVariable(name: "ODIN_DISALLOW_RTTI", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!235 = distinct !DIGlobalVariable(name: "ODIN_DISALLOW_RTTI", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!237 = distinct !DIGlobalVariable(name: "ODIN_VALGRIND_SUPPORT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!239 = distinct !DIGlobalVariable(name: "ODIN_VALGRIND_SUPPORT", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression(DW_OP_constu, 4194304, DW_OP_stack_value))
!241 = distinct !DIGlobalVariable(name: "runtime::DEFAULT_ARENA_GROWING_MINIMUM_BLOCK_SIZE", scope: null, type: !78, isLocal: false, isDefinition: true, align: 8)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression(DW_OP_constu, 4194304, DW_OP_stack_value))
!243 = distinct !DIGlobalVariable(name: "runtime::DEFAULT_TEMP_ALLOCATOR_BACKING_SIZE", scope: null, type: !10, isLocal: false, isDefinition: true, align: 8)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!245 = distinct !DIGlobalVariable(name: "runtime::NO_DEFAULT_TEMP_ALLOCATOR", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression(DW_OP_constu, 75, DW_OP_stack_value))
!247 = distinct !DIGlobalVariable(name: "runtime::MAP_LOAD_FACTOR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", baseType: !249, align: 64)
!249 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!251 = distinct !DIGlobalVariable(name: "runtime::MAP_MIN_LOG2_CAPACITY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!253 = distinct !DIGlobalVariable(name: "runtime::MAP_CACHE_LINE_LOG2", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!255 = distinct !DIGlobalVariable(name: "runtime::MAP_CACHE_LINE_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!257 = distinct !DIGlobalVariable(name: "runtime::IS_WASM", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!259 = distinct !DIGlobalVariable(name: "runtime::RUNTIME_REQUIRE", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!261 = distinct !DIGlobalVariable(name: "runtime::DEFAULT_RESERVE_CAPACITY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression(DW_OP_constu, 9223372036854775808, DW_OP_stack_value))
!263 = distinct !DIGlobalVariable(name: "runtime::TOMBSTONE_MASK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!265 = distinct !DIGlobalVariable(name: "runtime::DEFAULT_ALIGNMENT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!267 = distinct !DIGlobalVariable(name: "runtime::Byte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!269 = distinct !DIGlobalVariable(name: "runtime::Kilobyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression(DW_OP_constu, 1048576, DW_OP_stack_value))
!271 = distinct !DIGlobalVariable(name: "runtime::Megabyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!273 = distinct !DIGlobalVariable(name: "runtime::Gigabyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression(DW_OP_constu, 1099511627776, DW_OP_stack_value))
!275 = distinct !DIGlobalVariable(name: "runtime::Terabyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression(DW_OP_constu, 65533, DW_OP_stack_value))
!277 = distinct !DIGlobalVariable(name: "utf8::RUNE_ERROR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!279 = distinct !DIGlobalVariable(name: "utf8::RUNE_SELF", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression(DW_OP_constu, 65279, DW_OP_stack_value))
!281 = distinct !DIGlobalVariable(name: "utf8::RUNE_BOM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_stack_value))
!283 = distinct !DIGlobalVariable(name: "utf8::RUNE_EOF", scope: null, type: !284, isLocal: false, isDefinition: true, align: 8)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "rune", baseType: !285, align: 32)
!285 = !DIBasicType(name: "rune", size: 32, encoding: DW_ATE_UTF)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression(DW_OP_constu, 1114111, DW_OP_stack_value))
!287 = distinct !DIGlobalVariable(name: "utf8::MAX_RUNE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!289 = distinct !DIGlobalVariable(name: "utf8::UTF_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression(DW_OP_constu, 55296, DW_OP_stack_value))
!291 = distinct !DIGlobalVariable(name: "utf8::SURROGATE_MIN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression(DW_OP_constu, 57343, DW_OP_stack_value))
!293 = distinct !DIGlobalVariable(name: "utf8::SURROGATE_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression(DW_OP_constu, 56319, DW_OP_stack_value))
!295 = distinct !DIGlobalVariable(name: "utf8::SURROGATE_HIGH_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression(DW_OP_constu, 56320, DW_OP_stack_value))
!297 = distinct !DIGlobalVariable(name: "utf8::SURROGATE_LOW_MIN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!299 = distinct !DIGlobalVariable(name: "utf8::T1", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!301 = distinct !DIGlobalVariable(name: "utf8::TX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression(DW_OP_constu, 192, DW_OP_stack_value))
!303 = distinct !DIGlobalVariable(name: "utf8::T2", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression(DW_OP_constu, 224, DW_OP_stack_value))
!305 = distinct !DIGlobalVariable(name: "utf8::T3", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression(DW_OP_constu, 240, DW_OP_stack_value))
!307 = distinct !DIGlobalVariable(name: "utf8::T4", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression(DW_OP_constu, 248, DW_OP_stack_value))
!309 = distinct !DIGlobalVariable(name: "utf8::T5", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression(DW_OP_constu, 63, DW_OP_stack_value))
!311 = distinct !DIGlobalVariable(name: "utf8::MASKX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression(DW_OP_constu, 31, DW_OP_stack_value))
!313 = distinct !DIGlobalVariable(name: "utf8::MASK2", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression(DW_OP_constu, 15, DW_OP_stack_value))
!315 = distinct !DIGlobalVariable(name: "utf8::MASK3", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!317 = distinct !DIGlobalVariable(name: "utf8::MASK4", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!319 = distinct !DIGlobalVariable(name: "os::OS", scope: null, type: !97, isLocal: false, isDefinition: true, align: 8)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression(DW_OP_constu, 127, DW_OP_stack_value))
!321 = distinct !DIGlobalVariable(name: "utf8::RUNE1_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!323 = distinct !DIGlobalVariable(name: "os::ARCH", scope: null, type: !109, isLocal: false, isDefinition: true, align: 8)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression(DW_OP_constu, 2047, DW_OP_stack_value))
!325 = distinct !DIGlobalVariable(name: "utf8::RUNE2_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression(DW_OP_constu, 65535, DW_OP_stack_value))
!327 = distinct !DIGlobalVariable(name: "utf8::RUNE3_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!329 = distinct !DIGlobalVariable(name: "utf8::LOCB", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression(DW_OP_constu, 191, DW_OP_stack_value))
!331 = distinct !DIGlobalVariable(name: "utf8::HICB", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!333 = distinct !DIGlobalVariable(name: "os::ENDIAN", scope: null, type: !124, isLocal: false, isDefinition: true, align: 8)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!335 = distinct !DIGlobalVariable(name: "os::SEEK_SET", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!337 = distinct !DIGlobalVariable(name: "os::SEEK_CUR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!339 = distinct !DIGlobalVariable(name: "os::SEEK_END", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_stack_value))
!341 = distinct !DIGlobalVariable(name: "os::INVALID_HANDLE", scope: null, type: !88, isLocal: false, isDefinition: true, align: 8)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!343 = distinct !DIGlobalVariable(name: "os::ERROR_NONE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "Errno", scope: !87, file: !87, line: 13, baseType: !10, align: 64)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!346 = distinct !DIGlobalVariable(name: "os::EPERM", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!348 = distinct !DIGlobalVariable(name: "os::ENOENT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!350 = distinct !DIGlobalVariable(name: "os::ESRCH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!352 = distinct !DIGlobalVariable(name: "os::EINTR", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression(DW_OP_constu, 65536, DW_OP_stack_value))
!354 = distinct !DIGlobalVariable(name: "os::File_Mode_Dir", scope: null, type: !355, isLocal: false, isDefinition: true, align: 8)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "File_Mode", scope: !356, file: !356, line: 27, baseType: !357, align: 32)
!356 = !DIFile(filename: "stat.odin", directory: "/Users/tarvydas/tools/Odin/core/os")
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", baseType: !358, align: 32)
!358 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression(DW_OP_constu, 131072, DW_OP_stack_value))
!360 = distinct !DIGlobalVariable(name: "os::File_Mode_Named_Pipe", scope: null, type: !355, isLocal: false, isDefinition: true, align: 8)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression(DW_OP_constu, 262144, DW_OP_stack_value))
!362 = distinct !DIGlobalVariable(name: "os::File_Mode_Device", scope: null, type: !355, isLocal: false, isDefinition: true, align: 8)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression(DW_OP_constu, 524288, DW_OP_stack_value))
!364 = distinct !DIGlobalVariable(name: "os::File_Mode_Char_Device", scope: null, type: !355, isLocal: false, isDefinition: true, align: 8)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression(DW_OP_constu, 1048576, DW_OP_stack_value))
!366 = distinct !DIGlobalVariable(name: "os::File_Mode_Sym_Link", scope: null, type: !355, isLocal: false, isDefinition: true, align: 8)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!368 = distinct !DIGlobalVariable(name: "os::EIO", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!370 = distinct !DIGlobalVariable(name: "os::ENXIO", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!372 = distinct !DIGlobalVariable(name: "os::E2BIG", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!374 = distinct !DIGlobalVariable(name: "os::ENOEXEC", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression(DW_OP_constu, 9, DW_OP_stack_value))
!376 = distinct !DIGlobalVariable(name: "os::EBADF", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!378 = distinct !DIGlobalVariable(name: "bufio::DEFAULT_BUF_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!380 = distinct !DIGlobalVariable(name: "bufio::MIN_READ_BUFFER_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!382 = distinct !DIGlobalVariable(name: "bufio::DEFAULT_MAX_CONSECUTIVE_EMPTY_READS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression(DW_OP_constu, 10, DW_OP_stack_value))
!384 = distinct !DIGlobalVariable(name: "os::ECHILD", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression(DW_OP_constu, 11, DW_OP_stack_value))
!386 = distinct !DIGlobalVariable(name: "os::EDEADLK", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression(DW_OP_constu, 12, DW_OP_stack_value))
!388 = distinct !DIGlobalVariable(name: "os::ENOMEM", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression(DW_OP_constu, 13, DW_OP_stack_value))
!390 = distinct !DIGlobalVariable(name: "os::EACCES", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression(DW_OP_constu, 14, DW_OP_stack_value))
!392 = distinct !DIGlobalVariable(name: "os::EFAULT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression(DW_OP_constu, 15, DW_OP_stack_value))
!394 = distinct !DIGlobalVariable(name: "os::ENOTBLK", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!396 = distinct !DIGlobalVariable(name: "os::EBUSY", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression(DW_OP_constu, 17, DW_OP_stack_value))
!398 = distinct !DIGlobalVariable(name: "os::EEXIST", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression(DW_OP_constu, 18, DW_OP_stack_value))
!400 = distinct !DIGlobalVariable(name: "os::EXDEV", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression(DW_OP_constu, 19, DW_OP_stack_value))
!402 = distinct !DIGlobalVariable(name: "os::ENODEV", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression(DW_OP_constu, 20, DW_OP_stack_value))
!404 = distinct !DIGlobalVariable(name: "os::ENOTDIR", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression(DW_OP_constu, 21, DW_OP_stack_value))
!406 = distinct !DIGlobalVariable(name: "os::EISDIR", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression(DW_OP_constu, 22, DW_OP_stack_value))
!408 = distinct !DIGlobalVariable(name: "os::EINVAL", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression(DW_OP_constu, 23, DW_OP_stack_value))
!410 = distinct !DIGlobalVariable(name: "os::ENFILE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression(DW_OP_constu, 24, DW_OP_stack_value))
!412 = distinct !DIGlobalVariable(name: "os::EMFILE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression(DW_OP_constu, 25, DW_OP_stack_value))
!414 = distinct !DIGlobalVariable(name: "os::ENOTTY", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression(DW_OP_constu, 26, DW_OP_stack_value))
!416 = distinct !DIGlobalVariable(name: "os::ETXTBSY", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression(DW_OP_constu, 27, DW_OP_stack_value))
!418 = distinct !DIGlobalVariable(name: "os::EFBIG", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression(DW_OP_constu, 28, DW_OP_stack_value))
!420 = distinct !DIGlobalVariable(name: "os::ENOSPC", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression(DW_OP_constu, 29, DW_OP_stack_value))
!422 = distinct !DIGlobalVariable(name: "os::ESPIPE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression(DW_OP_constu, 30, DW_OP_stack_value))
!424 = distinct !DIGlobalVariable(name: "os::EROFS", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression(DW_OP_constu, 31, DW_OP_stack_value))
!426 = distinct !DIGlobalVariable(name: "os::EMLINK", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!428 = distinct !DIGlobalVariable(name: "os::EPIPE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression(DW_OP_constu, 33, DW_OP_stack_value))
!430 = distinct !DIGlobalVariable(name: "os::EDOM", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression(DW_OP_constu, 34, DW_OP_stack_value))
!432 = distinct !DIGlobalVariable(name: "os::ERANGE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!434 = distinct !DIGlobalVariable(name: "strconv::MAX_BASE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression(DW_OP_constu, 14695981039346656037, DW_OP_stack_value))
!436 = distinct !DIGlobalVariable(name: "runtime::INITIAL_HASH_SEED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression(DW_OP_constu, 9223372036854775807, DW_OP_stack_value))
!438 = distinct !DIGlobalVariable(name: "runtime::HASH_MASK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression(DW_OP_constu, 35, DW_OP_stack_value))
!440 = distinct !DIGlobalVariable(name: "os::EAGAIN", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression(DW_OP_constu, 35, DW_OP_stack_value))
!442 = distinct !DIGlobalVariable(name: "os::EWOULDBLOCK", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression(DW_OP_constu, 36, DW_OP_stack_value))
!444 = distinct !DIGlobalVariable(name: "os::EINPROGRESS", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression(DW_OP_constu, 37, DW_OP_stack_value))
!446 = distinct !DIGlobalVariable(name: "os::EALREADY", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression(DW_OP_constu, 38, DW_OP_stack_value))
!448 = distinct !DIGlobalVariable(name: "os::ENOTSOCK", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression(DW_OP_constu, 39, DW_OP_stack_value))
!450 = distinct !DIGlobalVariable(name: "os::EDESTADDRREQ", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!452 = distinct !DIGlobalVariable(name: "mem::Byte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!454 = distinct !DIGlobalVariable(name: "mem::Kilobyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression(DW_OP_constu, 1048576, DW_OP_stack_value))
!456 = distinct !DIGlobalVariable(name: "mem::Megabyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!458 = distinct !DIGlobalVariable(name: "mem::Gigabyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression(DW_OP_constu, 1099511627776, DW_OP_stack_value))
!460 = distinct !DIGlobalVariable(name: "mem::Terabyte", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression(DW_OP_constu, 65536, DW_OP_stack_value))
!462 = distinct !DIGlobalVariable(name: "mem::DYNAMIC_POOL_BLOCK_SIZE_DEFAULT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression(DW_OP_constu, 6554, DW_OP_stack_value))
!464 = distinct !DIGlobalVariable(name: "mem::DYNAMIC_POOL_OUT_OF_BAND_SIZE_DEFAULT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!466 = distinct !DIGlobalVariable(name: "time::Nanosecond", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "Duration", scope: !468, file: !468, line: 5, baseType: !469, align: 64)
!468 = !DIFile(filename: "time.odin", directory: "/Users/tarvydas/tools/Odin/core/time")
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "i64", baseType: !470, align: 64)
!470 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression(DW_OP_constu, 1000, DW_OP_stack_value))
!472 = distinct !DIGlobalVariable(name: "time::Microsecond", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression(DW_OP_constu, 1000000, DW_OP_stack_value))
!474 = distinct !DIGlobalVariable(name: "time::Millisecond", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression(DW_OP_constu, 1000000000, DW_OP_stack_value))
!476 = distinct !DIGlobalVariable(name: "time::Second", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression(DW_OP_constu, 60000000000, DW_OP_stack_value))
!478 = distinct !DIGlobalVariable(name: "time::Minute", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression(DW_OP_constu, 3600000000000, DW_OP_stack_value))
!480 = distinct !DIGlobalVariable(name: "time::Hour", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!482 = distinct !DIGlobalVariable(name: "time::_IS_SUPPORTED", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression(DW_OP_constu, 9223372036854775808, DW_OP_stack_value))
!484 = distinct !DIGlobalVariable(name: "time::MIN_DURATION", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression(DW_OP_constu, 9223372036854775807, DW_OP_stack_value))
!486 = distinct !DIGlobalVariable(name: "time::MAX_DURATION", scope: null, type: !467, isLocal: false, isDefinition: true, align: 8)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!488 = distinct !DIGlobalVariable(name: "time::IS_SUPPORTED", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression(DW_OP_constu, 65533, DW_OP_stack_value))
!490 = distinct !DIGlobalVariable(name: "utf16::REPLACEMENT_CHAR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression(DW_OP_constu, 69631, DW_OP_stack_value))
!492 = distinct !DIGlobalVariable(name: "unicode::MAX_RUNE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression(DW_OP_constu, 65533, DW_OP_stack_value))
!494 = distinct !DIGlobalVariable(name: "unicode::REPLACEMENT_CHAR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression(DW_OP_constu, 65536, DW_OP_stack_value))
!496 = distinct !DIGlobalVariable(name: "bufio::DEFAULT_MAX_SCAN_TOKEN_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression(DW_OP_constu, 127, DW_OP_stack_value))
!498 = distinct !DIGlobalVariable(name: "unicode::MAX_ASCII", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!500 = distinct !DIGlobalVariable(name: "bufio::_INIT_BUF_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression(DW_OP_constu, 1114111, DW_OP_stack_value))
!502 = distinct !DIGlobalVariable(name: "utf16::MAX_RUNE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression(DW_OP_constu, 55296, DW_OP_stack_value))
!504 = distinct !DIGlobalVariable(name: "utf16::_surr1", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression(DW_OP_constu, 56320, DW_OP_stack_value))
!506 = distinct !DIGlobalVariable(name: "utf16::_surr2", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression(DW_OP_constu, 57344, DW_OP_stack_value))
!508 = distinct !DIGlobalVariable(name: "utf16::_surr3", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression(DW_OP_constu, 65536, DW_OP_stack_value))
!510 = distinct !DIGlobalVariable(name: "utf16::_surr_self", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!512 = distinct !DIGlobalVariable(name: "unicode::pC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression(DW_OP_constu, 16777619, DW_OP_stack_value))
!514 = distinct !DIGlobalVariable(name: "strings::PRIME_RABIN_KARP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression(DW_OP_constu, 255, DW_OP_stack_value))
!516 = distinct !DIGlobalVariable(name: "unicode::MAX_LATIN1", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!518 = distinct !DIGlobalVariable(name: "unicode::pP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!520 = distinct !DIGlobalVariable(name: "unicode::pN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!522 = distinct !DIGlobalVariable(name: "unicode::pS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!524 = distinct !DIGlobalVariable(name: "unicode::pZ", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!526 = distinct !DIGlobalVariable(name: "unicode::pLu", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!528 = distinct !DIGlobalVariable(name: "unicode::pLl", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!530 = distinct !DIGlobalVariable(name: "unicode::pp", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression(DW_OP_constu, 144, DW_OP_stack_value))
!532 = distinct !DIGlobalVariable(name: "unicode::pg", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression(DW_OP_constu, 96, DW_OP_stack_value))
!534 = distinct !DIGlobalVariable(name: "unicode::pLo", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression(DW_OP_constu, 96, DW_OP_stack_value))
!536 = distinct !DIGlobalVariable(name: "unicode::pLmask", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!538 = distinct !DIGlobalVariable(name: "bytes::MIN_READ", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!540 = distinct !DIGlobalVariable(name: "bytes::SMALL_BUFFER_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression(DW_OP_constu, 18446743781432529217, DW_OP_stack_value))
!542 = distinct !DIGlobalVariable(name: "time::ABSOLUTE_ZERO_YEAR", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression(DW_OP_constu, 9223372107129826816, DW_OP_stack_value))
!544 = distinct !DIGlobalVariable(name: "time::ABSOLUTE_TO_INTERNAL", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression(DW_OP_constu, 9223371966579724800, DW_OP_stack_value))
!546 = distinct !DIGlobalVariable(name: "time::INTERNAL_TO_ABSOLUTE", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression(DW_OP_constu, 62135596800, DW_OP_stack_value))
!548 = distinct !DIGlobalVariable(name: "time::UNIX_TO_INTERNAL", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression(DW_OP_constu, 18446744011573954816, DW_OP_stack_value))
!550 = distinct !DIGlobalVariable(name: "time::INTERNAL_TO_UNIX", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression(DW_OP_constu, 59453308800, DW_OP_stack_value))
!552 = distinct !DIGlobalVariable(name: "time::WALL_TO_INTERNAL", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression(DW_OP_constu, 18446744014256242816, DW_OP_stack_value))
!554 = distinct !DIGlobalVariable(name: "time::INTERNAL_TO_WALL", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression(DW_OP_constu, 9223372028715321600, DW_OP_stack_value))
!556 = distinct !DIGlobalVariable(name: "time::UNIX_TO_ABSOLUTE", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression(DW_OP_constu, 9223372044994230016, DW_OP_stack_value))
!558 = distinct !DIGlobalVariable(name: "time::ABSOLUTE_TO_UNIX", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!560 = distinct !DIGlobalVariable(name: "math_bits::U8_MIN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!562 = distinct !DIGlobalVariable(name: "math_bits::U16_MIN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!564 = distinct !DIGlobalVariable(name: "math_bits::U32_MIN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!566 = distinct !DIGlobalVariable(name: "math_bits::U64_MIN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression(DW_OP_constu, 255, DW_OP_stack_value))
!568 = distinct !DIGlobalVariable(name: "math_bits::U8_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression(DW_OP_constu, 65535, DW_OP_stack_value))
!570 = distinct !DIGlobalVariable(name: "math_bits::U16_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression(DW_OP_constu, 4294967295, DW_OP_stack_value))
!572 = distinct !DIGlobalVariable(name: "math_bits::U32_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression(DW_OP_constu, 16777619, DW_OP_stack_value))
!574 = distinct !DIGlobalVariable(name: "bytes::PRIME_RABIN_KARP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_stack_value))
!576 = distinct !DIGlobalVariable(name: "math_bits::U64_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression(DW_OP_constu, 18446744073709551488, DW_OP_stack_value))
!578 = distinct !DIGlobalVariable(name: "math_bits::I8_MIN", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression(DW_OP_constu, 18446744073709518848, DW_OP_stack_value))
!580 = distinct !DIGlobalVariable(name: "math_bits::I16_MIN", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression(DW_OP_constu, 18446744071562067968, DW_OP_stack_value))
!582 = distinct !DIGlobalVariable(name: "math_bits::I32_MIN", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression(DW_OP_constu, 9223372036854775808, DW_OP_stack_value))
!584 = distinct !DIGlobalVariable(name: "math_bits::I64_MIN", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression(DW_OP_constu, 127, DW_OP_stack_value))
!586 = distinct !DIGlobalVariable(name: "math_bits::I8_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression(DW_OP_constu, 32767, DW_OP_stack_value))
!588 = distinct !DIGlobalVariable(name: "math_bits::I16_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression(DW_OP_constu, 2147483647, DW_OP_stack_value))
!590 = distinct !DIGlobalVariable(name: "math_bits::I32_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression(DW_OP_constu, 9223372036854775807, DW_OP_stack_value))
!592 = distinct !DIGlobalVariable(name: "math_bits::I64_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!594 = distinct !DIGlobalVariable(name: "mem::DEFAULT_ALIGNMENT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!596 = distinct !DIGlobalVariable(name: "mem::DEFAULT_PAGE_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression(DW_OP_constu, 40, DW_OP_stack_value))
!598 = distinct !DIGlobalVariable(name: "os::EMSGSIZE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression(DW_OP_constu, 41, DW_OP_stack_value))
!600 = distinct !DIGlobalVariable(name: "os::EPROTOTYPE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression(DW_OP_constu, 42, DW_OP_stack_value))
!602 = distinct !DIGlobalVariable(name: "os::ENOPROTOOPT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression(DW_OP_constu, 43, DW_OP_stack_value))
!604 = distinct !DIGlobalVariable(name: "os::EPROTONOSUPPORT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression(DW_OP_constu, 44, DW_OP_stack_value))
!606 = distinct !DIGlobalVariable(name: "os::ESOCKTNOSUPPORT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression(DW_OP_constu, 45, DW_OP_stack_value))
!608 = distinct !DIGlobalVariable(name: "os::ENOTSUP", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression(DW_OP_constu, 8176, DW_OP_stack_value))
!610 = distinct !DIGlobalVariable(name: "unix::PTHREAD_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression(DW_OP_constu, 56, DW_OP_stack_value))
!612 = distinct !DIGlobalVariable(name: "unix::PTHREAD_ATTR_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!614 = distinct !DIGlobalVariable(name: "unix::PTHREAD_MUTEXATTR_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression(DW_OP_constu, 56, DW_OP_stack_value))
!616 = distinct !DIGlobalVariable(name: "unix::PTHREAD_MUTEX_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!618 = distinct !DIGlobalVariable(name: "unix::PTHREAD_CONDATTR_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression(DW_OP_constu, 40, DW_OP_stack_value))
!620 = distinct !DIGlobalVariable(name: "unix::PTHREAD_COND_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!622 = distinct !DIGlobalVariable(name: "unix::PTHREAD_ONCE_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression(DW_OP_constu, 192, DW_OP_stack_value))
!624 = distinct !DIGlobalVariable(name: "unix::PTHREAD_RWLOCK_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!626 = distinct !DIGlobalVariable(name: "unix::PTHREAD_RWLOCKATTR_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!628 = distinct !DIGlobalVariable(name: "unix::CTL_KERN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!630 = distinct !DIGlobalVariable(name: "unix::KERN_OSTYPE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!632 = distinct !DIGlobalVariable(name: "unix::KERN_OSRELEASE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!634 = distinct !DIGlobalVariable(name: "unix::KERN_OSREV", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!636 = distinct !DIGlobalVariable(name: "unix::KERN_VERSION", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression(DW_OP_constu, 26, DW_OP_stack_value))
!638 = distinct !DIGlobalVariable(name: "unix::KERN_OSRELDATE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression(DW_OP_constu, 65, DW_OP_stack_value))
!640 = distinct !DIGlobalVariable(name: "unix::KERN_OSVERSION", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!642 = distinct !DIGlobalVariable(name: "unix::CTL_VM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!644 = distinct !DIGlobalVariable(name: "unix::CTL_VFS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!646 = distinct !DIGlobalVariable(name: "unix::CTL_NET", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!648 = distinct !DIGlobalVariable(name: "unix::CTL_DEBUG", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!650 = distinct !DIGlobalVariable(name: "unix::CTL_HW", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!652 = distinct !DIGlobalVariable(name: "unix::HW_MACHINE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!654 = distinct !DIGlobalVariable(name: "unix::HW_MODEL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!656 = distinct !DIGlobalVariable(name: "unix::HW_NCPU", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!658 = distinct !DIGlobalVariable(name: "unix::HW_BYTEORDER", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression(DW_OP_constu, 12, DW_OP_stack_value))
!660 = distinct !DIGlobalVariable(name: "unix::HW_MACHINE_ARCH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression(DW_OP_constu, 13, DW_OP_stack_value))
!662 = distinct !DIGlobalVariable(name: "unix::HW_VECTORUNIT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression(DW_OP_constu, 24, DW_OP_stack_value))
!664 = distinct !DIGlobalVariable(name: "unix::HW_MEMSIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression(DW_OP_constu, 25, DW_OP_stack_value))
!666 = distinct !DIGlobalVariable(name: "unix::HW_AVAILCPU", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!668 = distinct !DIGlobalVariable(name: "unix::CTL_MACHDEP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!670 = distinct !DIGlobalVariable(name: "unix::CTL_USER", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!672 = distinct !DIGlobalVariable(name: "unix::CLOCK_SYSTEM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!674 = distinct !DIGlobalVariable(name: "unix::CLOCK_CALENDAR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!676 = distinct !DIGlobalVariable(name: "darwin::LOCK_SH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!678 = distinct !DIGlobalVariable(name: "darwin::LOCK_EX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!680 = distinct !DIGlobalVariable(name: "darwin::LOCK_NB", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!682 = distinct !DIGlobalVariable(name: "darwin::LOCK_UN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!684 = distinct !DIGlobalVariable(name: "darwin::F_OK", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!686 = distinct !DIGlobalVariable(name: "darwin::X_OK", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!688 = distinct !DIGlobalVariable(name: "darwin::W_OK", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!690 = distinct !DIGlobalVariable(name: "darwin::R_OK", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!692 = distinct !DIGlobalVariable(name: "darwin::COPYFILE_ACL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!694 = distinct !DIGlobalVariable(name: "darwin::COPYFILE_STAT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!696 = distinct !DIGlobalVariable(name: "darwin::COPYFILE_XATTR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!698 = distinct !DIGlobalVariable(name: "darwin::COPYFILE_DATA", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!700 = distinct !DIGlobalVariable(name: "darwin::COPYFILE_SECURITY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!702 = distinct !DIGlobalVariable(name: "darwin::COPYFILE_METADATA", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression(DW_OP_constu, 15, DW_OP_stack_value))
!704 = distinct !DIGlobalVariable(name: "darwin::COPYFILE_ALL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!706 = distinct !DIGlobalVariable(name: "darwin::PATH_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!708 = distinct !DIGlobalVariable(name: "darwin::MAXPATHLEN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!710 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_PIDPATHINFO_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression(DW_OP_constu, 11, DW_OP_stack_value))
!712 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_PIDPATHINFO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!714 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_ALL_PIDS", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression(DW_OP_constu, 60, DW_OP_stack_value))
!716 = distinct !DIGlobalVariable(name: "time::SECONDS_PER_MINUTE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!718 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_PGRP_ONLY", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression(DW_OP_constu, 3600, DW_OP_stack_value))
!720 = distinct !DIGlobalVariable(name: "time::SECONDS_PER_HOUR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression(DW_OP_constu, 86400, DW_OP_stack_value))
!722 = distinct !DIGlobalVariable(name: "time::SECONDS_PER_DAY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression(DW_OP_constu, 604800, DW_OP_stack_value))
!724 = distinct !DIGlobalVariable(name: "time::SECONDS_PER_WEEK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression(DW_OP_constu, 146097, DW_OP_stack_value))
!726 = distinct !DIGlobalVariable(name: "time::DAYS_PER_400_YEARS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression(DW_OP_constu, 36524, DW_OP_stack_value))
!728 = distinct !DIGlobalVariable(name: "time::DAYS_PER_100_YEARS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression(DW_OP_constu, 1461, DW_OP_stack_value))
!730 = distinct !DIGlobalVariable(name: "time::DAYS_PER_4_YEARS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!732 = distinct !DIGlobalVariable(name: "sync::UL_COMPARE_AND_WAIT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!734 = distinct !DIGlobalVariable(name: "sync::ULF_WAKE_ALL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression(DW_OP_constu, 16777216, DW_OP_stack_value))
!736 = distinct !DIGlobalVariable(name: "sync::ULF_NO_ERRNO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_stack_value))
!738 = distinct !DIGlobalVariable(name: "sync::ENOENT", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression(DW_OP_constu, 18446744073709551612, DW_OP_stack_value))
!740 = distinct !DIGlobalVariable(name: "sync::EINTR", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression(DW_OP_constu, 18446744073709551602, DW_OP_stack_value))
!742 = distinct !DIGlobalVariable(name: "sync::EFAULT", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression(DW_OP_constu, 18446744073709551556, DW_OP_stack_value))
!744 = distinct !DIGlobalVariable(name: "sync::ETIMEDOUT", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!746 = distinct !DIGlobalVariable(name: "sync::Atomic_RW_Mutex_State_Half_Width", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!748 = distinct !DIGlobalVariable(name: "sync::Atomic_RW_Mutex_State_Is_Writing", scope: null, type: !749, isLocal: false, isDefinition: true, align: 8)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_RW_Mutex_State", scope: !750, file: !750, line: 97, baseType: !78, align: 64)
!750 = !DIFile(filename: "primitives_atomic.odin", directory: "/Users/tarvydas/tools/Odin/core/sync")
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!752 = distinct !DIGlobalVariable(name: "sync::Atomic_RW_Mutex_State_Writer", scope: null, type: !749, isLocal: false, isDefinition: true, align: 8)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression(DW_OP_constu, 4294967296, DW_OP_stack_value))
!754 = distinct !DIGlobalVariable(name: "sync::Atomic_RW_Mutex_State_Reader", scope: null, type: !749, isLocal: false, isDefinition: true, align: 8)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression(DW_OP_constu, 4294967294, DW_OP_stack_value))
!756 = distinct !DIGlobalVariable(name: "sync::Atomic_RW_Mutex_State_Writer_Mask", scope: null, type: !749, isLocal: false, isDefinition: true, align: 8)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression(DW_OP_constu, 9223372032559808512, DW_OP_stack_value))
!758 = distinct !DIGlobalVariable(name: "sync::Atomic_RW_Mutex_State_Reader_Mask", scope: null, type: !749, isLocal: false, isDefinition: true, align: 8)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!760 = distinct !DIGlobalVariable(name: "unix::SCHED_OTHER", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!762 = distinct !DIGlobalVariable(name: "unix::SCHED_FIFO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!764 = distinct !DIGlobalVariable(name: "unix::SCHED_RR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!766 = distinct !DIGlobalVariable(name: "unix::SCHED_PARAM_SIZE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression(DW_OP_constu, 127, DW_OP_stack_value))
!768 = distinct !DIGlobalVariable(name: "c::INT8_MAX", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression(DW_OP_constu, 32767, DW_OP_stack_value))
!770 = distinct !DIGlobalVariable(name: "c::INT16_MAX", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression(DW_OP_constu, 2147483647, DW_OP_stack_value))
!772 = distinct !DIGlobalVariable(name: "c::INT32_MAX", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!774 = distinct !DIGlobalVariable(name: "unix::PTHREAD_CREATE_JOINABLE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!776 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_TTY_ONLY", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!778 = distinct !DIGlobalVariable(name: "unix::PTHREAD_CREATE_DETACHED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!780 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_UID_ONLY", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!782 = distinct !DIGlobalVariable(name: "unix::PTHREAD_INHERIT_SCHED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!784 = distinct !DIGlobalVariable(name: "unix::PTHREAD_EXPLICIT_SCHED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!786 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_RUID_ONLY", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!788 = distinct !DIGlobalVariable(name: "unix::PTHREAD_PROCESS_SHARED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!790 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_PPID_ONLY", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!792 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_KDBG_ONLY", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!794 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_LISTPIDS", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!796 = distinct !DIGlobalVariable(name: "unix::PTHREAD_PROCESS_PRIVATE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!798 = distinct !DIGlobalVariable(name: "unix::PTHREAD_MUTEX_NORMAL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!800 = distinct !DIGlobalVariable(name: "unix::PTHREAD_MUTEX_RECURSIVE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!802 = distinct !DIGlobalVariable(name: "unix::PTHREAD_MUTEX_ERRORCHECK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!804 = distinct !DIGlobalVariable(name: "unix::PTHREAD_CANCEL_ENABLE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!806 = distinct !DIGlobalVariable(name: "unix::PTHREAD_CANCEL_DISABLE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!808 = distinct !DIGlobalVariable(name: "unix::PTHREAD_CANCEL_DEFERRED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!810 = distinct !DIGlobalVariable(name: "unix::PTHREAD_CANCEL_ASYNCHRONOUS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression(DW_OP_constu, 45, DW_OP_stack_value))
!812 = distinct !DIGlobalVariable(name: "os::EOPNOTSUPP", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression(DW_OP_constu, 46, DW_OP_stack_value))
!814 = distinct !DIGlobalVariable(name: "os::EPFNOSUPPORT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression(DW_OP_constu, 47, DW_OP_stack_value))
!816 = distinct !DIGlobalVariable(name: "os::EAFNOSUPPORT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression(DW_OP_constu, 48, DW_OP_stack_value))
!818 = distinct !DIGlobalVariable(name: "os::EADDRINUSE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression(DW_OP_constu, 49, DW_OP_stack_value))
!820 = distinct !DIGlobalVariable(name: "os::EADDRNOTAVAIL", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression(DW_OP_constu, 50, DW_OP_stack_value))
!822 = distinct !DIGlobalVariable(name: "os::ENETDOWN", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression(DW_OP_constu, 51, DW_OP_stack_value))
!824 = distinct !DIGlobalVariable(name: "os::ENETUNREACH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression(DW_OP_constu, 52, DW_OP_stack_value))
!826 = distinct !DIGlobalVariable(name: "os::ENETRESET", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression(DW_OP_constu, 53, DW_OP_stack_value))
!828 = distinct !DIGlobalVariable(name: "os::ECONNABORTED", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression(DW_OP_constu, 54, DW_OP_stack_value))
!830 = distinct !DIGlobalVariable(name: "os::ECONNRESET", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression(DW_OP_constu, 55, DW_OP_stack_value))
!832 = distinct !DIGlobalVariable(name: "os::ENOBUFS", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression(DW_OP_constu, 56, DW_OP_stack_value))
!834 = distinct !DIGlobalVariable(name: "os::EISCONN", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression(DW_OP_constu, 57, DW_OP_stack_value))
!836 = distinct !DIGlobalVariable(name: "os::ENOTCONN", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression(DW_OP_constu, 58, DW_OP_stack_value))
!838 = distinct !DIGlobalVariable(name: "os::ESHUTDOWN", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression(DW_OP_constu, 59, DW_OP_stack_value))
!840 = distinct !DIGlobalVariable(name: "os::ETOOMANYREFS", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression(DW_OP_constu, 60, DW_OP_stack_value))
!842 = distinct !DIGlobalVariable(name: "os::ETIMEDOUT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression(DW_OP_constu, 61, DW_OP_stack_value))
!844 = distinct !DIGlobalVariable(name: "os::ECONNREFUSED", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression(DW_OP_constu, 62, DW_OP_stack_value))
!846 = distinct !DIGlobalVariable(name: "os::ELOOP", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression(DW_OP_constu, 63, DW_OP_stack_value))
!848 = distinct !DIGlobalVariable(name: "os::ENAMETOOLONG", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!850 = distinct !DIGlobalVariable(name: "os::EHOSTDOWN", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression(DW_OP_constu, 65, DW_OP_stack_value))
!852 = distinct !DIGlobalVariable(name: "os::EHOSTUNREACH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression(DW_OP_constu, 66, DW_OP_stack_value))
!854 = distinct !DIGlobalVariable(name: "os::ENOTEMPTY", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression(DW_OP_constu, 67, DW_OP_stack_value))
!856 = distinct !DIGlobalVariable(name: "os::EPROCLIM", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression(DW_OP_constu, 68, DW_OP_stack_value))
!858 = distinct !DIGlobalVariable(name: "os::EUSERS", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression(DW_OP_constu, 69, DW_OP_stack_value))
!860 = distinct !DIGlobalVariable(name: "os::EDQUOT", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression(DW_OP_constu, 70, DW_OP_stack_value))
!862 = distinct !DIGlobalVariable(name: "os::ESTALE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression(DW_OP_constu, 71, DW_OP_stack_value))
!864 = distinct !DIGlobalVariable(name: "os::EREMOTE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression(DW_OP_constu, 72, DW_OP_stack_value))
!866 = distinct !DIGlobalVariable(name: "os::EBADRPC", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression(DW_OP_constu, 73, DW_OP_stack_value))
!868 = distinct !DIGlobalVariable(name: "os::ERPCMISMATCH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression(DW_OP_constu, 74, DW_OP_stack_value))
!870 = distinct !DIGlobalVariable(name: "os::EPROGUNAVAIL", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression(DW_OP_constu, 75, DW_OP_stack_value))
!872 = distinct !DIGlobalVariable(name: "os::EPROGMISMATCH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression(DW_OP_constu, 76, DW_OP_stack_value))
!874 = distinct !DIGlobalVariable(name: "os::EPROCUNAVAIL", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression(DW_OP_constu, 77, DW_OP_stack_value))
!876 = distinct !DIGlobalVariable(name: "os::ENOLCK", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression(DW_OP_constu, 78, DW_OP_stack_value))
!878 = distinct !DIGlobalVariable(name: "os::ENOSYS", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression(DW_OP_constu, 79, DW_OP_stack_value))
!880 = distinct !DIGlobalVariable(name: "os::EFTYPE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression(DW_OP_constu, 80, DW_OP_stack_value))
!882 = distinct !DIGlobalVariable(name: "os::EAUTH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression(DW_OP_constu, 81, DW_OP_stack_value))
!884 = distinct !DIGlobalVariable(name: "os::ENEEDAUTH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression(DW_OP_constu, 82, DW_OP_stack_value))
!886 = distinct !DIGlobalVariable(name: "os::EPWROFF", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression(DW_OP_constu, 9223372036854775807, DW_OP_stack_value))
!888 = distinct !DIGlobalVariable(name: "c::INT64_MAX", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression(DW_OP_constu, 83, DW_OP_stack_value))
!890 = distinct !DIGlobalVariable(name: "os::EDEVERR", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression(DW_OP_constu, 84, DW_OP_stack_value))
!892 = distinct !DIGlobalVariable(name: "os::EOVERFLOW", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression(DW_OP_constu, 85, DW_OP_stack_value))
!894 = distinct !DIGlobalVariable(name: "os::EBADEXEC", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression(DW_OP_constu, 86, DW_OP_stack_value))
!896 = distinct !DIGlobalVariable(name: "os::EBADARCH", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression(DW_OP_constu, 255, DW_OP_stack_value))
!898 = distinct !DIGlobalVariable(name: "c::UINT8_MAX", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression(DW_OP_constu, 87, DW_OP_stack_value))
!900 = distinct !DIGlobalVariable(name: "os::ESHLIBVERS", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression(DW_OP_constu, 65535, DW_OP_stack_value))
!902 = distinct !DIGlobalVariable(name: "c::UINT16_MAX", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression(DW_OP_constu, 4294967295, DW_OP_stack_value))
!904 = distinct !DIGlobalVariable(name: "c::UINT32_MAX", scope: null, type: !357, isLocal: false, isDefinition: true, align: 8)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_stack_value))
!906 = distinct !DIGlobalVariable(name: "c::UINT64_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression(DW_OP_constu, 18446744073709551488, DW_OP_stack_value))
!908 = distinct !DIGlobalVariable(name: "c::INT8_MIN", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression(DW_OP_constu, 88, DW_OP_stack_value))
!910 = distinct !DIGlobalVariable(name: "os::EBADMACHO", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression(DW_OP_constu, 89, DW_OP_stack_value))
!912 = distinct !DIGlobalVariable(name: "os::ECANCELED", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression(DW_OP_constu, 90, DW_OP_stack_value))
!914 = distinct !DIGlobalVariable(name: "os::EIDRM", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression(DW_OP_constu, 91, DW_OP_stack_value))
!916 = distinct !DIGlobalVariable(name: "os::ENOMSG", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!917 = !DIGlobalVariableExpression(var: !918, expr: !DIExpression(DW_OP_constu, 92, DW_OP_stack_value))
!918 = distinct !DIGlobalVariable(name: "os::EILSEQ", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!919 = !DIGlobalVariableExpression(var: !920, expr: !DIExpression(DW_OP_constu, 93, DW_OP_stack_value))
!920 = distinct !DIGlobalVariable(name: "os::ENOATTR", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression(DW_OP_constu, 18446744073709518848, DW_OP_stack_value))
!922 = distinct !DIGlobalVariable(name: "c::INT16_MIN", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression(DW_OP_constu, 18446744071562067968, DW_OP_stack_value))
!924 = distinct !DIGlobalVariable(name: "c::INT32_MIN", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression(DW_OP_constu, 9223372036854775808, DW_OP_stack_value))
!926 = distinct !DIGlobalVariable(name: "c::INT64_MIN", scope: null, type: !469, isLocal: false, isDefinition: true, align: 8)
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_stack_value))
!928 = distinct !DIGlobalVariable(name: "c::SIZE_MAX", scope: null, type: !78, isLocal: false, isDefinition: true, align: 8)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression(DW_OP_constu, 9223372036854775808, DW_OP_stack_value))
!930 = distinct !DIGlobalVariable(name: "c::PTRDIFF_MIN", scope: null, type: !931, isLocal: false, isDefinition: true, align: 8)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !932, file: !932, line: 73, baseType: !10, align: 64)
!932 = !DIFile(filename: "c.odin", directory: "/Users/tarvydas/tools/Odin/core/c")
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression(DW_OP_constu, 9223372036854775807, DW_OP_stack_value))
!934 = distinct !DIGlobalVariable(name: "c::PTRDIFF_MAX", scope: null, type: !931, isLocal: false, isDefinition: true, align: 8)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression(DW_OP_constu, 94, DW_OP_stack_value))
!936 = distinct !DIGlobalVariable(name: "os::EBADMSG", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression(DW_OP_constu, 95, DW_OP_stack_value))
!938 = distinct !DIGlobalVariable(name: "os::EMULTIHOP", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression(DW_OP_constu, 96, DW_OP_stack_value))
!940 = distinct !DIGlobalVariable(name: "os::ENODATA", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression(DW_OP_constu, 97, DW_OP_stack_value))
!942 = distinct !DIGlobalVariable(name: "os::ENOLINK", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression(DW_OP_constu, 98, DW_OP_stack_value))
!944 = distinct !DIGlobalVariable(name: "os::ENOSR", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!946 = distinct !DIGlobalVariable(name: "c::WCHAR_MIN", scope: null, type: !357, isLocal: false, isDefinition: true, align: 8)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression(DW_OP_constu, 4294967295, DW_OP_stack_value))
!948 = distinct !DIGlobalVariable(name: "c::WCHAR_MAX", scope: null, type: !357, isLocal: false, isDefinition: true, align: 8)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!950 = distinct !DIGlobalVariable(name: "c::NULL", scope: null, type: !6, isLocal: false, isDefinition: true, align: 8)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!952 = distinct !DIGlobalVariable(name: "c::NDEBUG", scope: null, type: !168, isLocal: false, isDefinition: true, align: 8)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!954 = distinct !DIGlobalVariable(name: "c::CHAR_BIT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression(DW_OP_constu, 99, DW_OP_stack_value))
!956 = distinct !DIGlobalVariable(name: "os::ENOSTR", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression(DW_OP_constu, 100, DW_OP_stack_value))
!958 = distinct !DIGlobalVariable(name: "os::EPROTO", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression(DW_OP_constu, 101, DW_OP_stack_value))
!960 = distinct !DIGlobalVariable(name: "os::ETIME", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression(DW_OP_constu, 103, DW_OP_stack_value))
!962 = distinct !DIGlobalVariable(name: "os::ENOPOLICY", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression(DW_OP_constu, 104, DW_OP_stack_value))
!964 = distinct !DIGlobalVariable(name: "os::ENOTRECOVERABLE", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression(DW_OP_constu, 105, DW_OP_stack_value))
!966 = distinct !DIGlobalVariable(name: "os::EOWNERDEAD", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!967 = !DIGlobalVariableExpression(var: !968, expr: !DIExpression(DW_OP_constu, 106, DW_OP_stack_value))
!968 = distinct !DIGlobalVariable(name: "os::EQFULL", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!969 = !DIGlobalVariableExpression(var: !970, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!970 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_PIDINFO", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!971 = !DIGlobalVariableExpression(var: !972, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!972 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_PIDFDINFO", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!974 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_KERNMSGBUF", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!976 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_SETCONTROL", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!978 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_PIDFILEPORTINFO", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!980 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_TERMINATE", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!982 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_DIRTYCONTROL", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression(DW_OP_constu, 9, DW_OP_stack_value))
!984 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_PIDRUSAGE", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression(DW_OP_constu, 10, DW_OP_stack_value))
!986 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_PIDORIGINATORINFO", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression(DW_OP_constu, 11, DW_OP_stack_value))
!988 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_LISTCOALITIONS", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression(DW_OP_constu, 12, DW_OP_stack_value))
!990 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_CANUSEFGHW", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression(DW_OP_constu, 13, DW_OP_stack_value))
!992 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_PIDDYNKQUEUEINFO", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression(DW_OP_constu, 14, DW_OP_stack_value))
!994 = distinct !DIGlobalVariable(name: "darwin::DARWIN_PROC_INFO_CALL_UDATA_INFO", scope: null, type: !65, isLocal: false, isDefinition: true, align: 8)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!996 = distinct !DIGlobalVariable(name: "darwin::MAP_ANONYMOUS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!998 = distinct !DIGlobalVariable(name: "darwin::MAP_FILE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1000 = distinct !DIGlobalVariable(name: "darwin::MAP_FIXED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!1002 = distinct !DIGlobalVariable(name: "darwin::MAP_HASSEMAPHORE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1004 = distinct !DIGlobalVariable(name: "darwin::MAP_PRIVATE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression(DW_OP_constu, 106, DW_OP_stack_value))
!1006 = distinct !DIGlobalVariable(name: "os::ELAST", scope: null, type: !344, isLocal: false, isDefinition: true, align: 8)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1008 = distinct !DIGlobalVariable(name: "os::O_RDONLY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1010 = distinct !DIGlobalVariable(name: "os::O_WRONLY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1011 = !DIGlobalVariableExpression(var: !1012, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1012 = distinct !DIGlobalVariable(name: "os::O_RDWR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1013 = !DIGlobalVariableExpression(var: !1014, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!1014 = distinct !DIGlobalVariable(name: "os::O_CREATE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression(DW_OP_constu, 2048, DW_OP_stack_value))
!1016 = distinct !DIGlobalVariable(name: "os::O_EXCL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1018 = distinct !DIGlobalVariable(name: "darwin::MAP_SHARED", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!1020 = distinct !DIGlobalVariable(name: "darwin::MAP_NOCACHE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1021 = !DIGlobalVariableExpression(var: !1022, expr: !DIExpression(DW_OP_constu, 2048, DW_OP_stack_value))
!1022 = distinct !DIGlobalVariable(name: "darwin::MAP_JIT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1023 = !DIGlobalVariableExpression(var: !1024, expr: !DIExpression(DW_OP_constu, 32768, DW_OP_stack_value))
!1024 = distinct !DIGlobalVariable(name: "darwin::MAP_32BIT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1025 = !DIGlobalVariableExpression(var: !1026, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1026 = distinct !DIGlobalVariable(name: "darwin::PROT_NONE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1027 = !DIGlobalVariableExpression(var: !1028, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1028 = distinct !DIGlobalVariable(name: "darwin::PROT_READ", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1029 = !DIGlobalVariableExpression(var: !1030, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1030 = distinct !DIGlobalVariable(name: "os::O_NOCTTY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1031 = !DIGlobalVariableExpression(var: !1032, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!1032 = distinct !DIGlobalVariable(name: "os::O_TRUNC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1033 = !DIGlobalVariableExpression(var: !1034, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1034 = distinct !DIGlobalVariable(name: "os::O_NONBLOCK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1035 = !DIGlobalVariableExpression(var: !1036, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1036 = distinct !DIGlobalVariable(name: "os::O_APPEND", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1037 = !DIGlobalVariableExpression(var: !1038, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!1038 = distinct !DIGlobalVariable(name: "os::O_SYNC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1039 = !DIGlobalVariableExpression(var: !1040, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1040 = distinct !DIGlobalVariable(name: "darwin::PROT_WRITE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!1042 = distinct !DIGlobalVariable(name: "os::O_ASYNC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1044 = distinct !DIGlobalVariable(name: "darwin::PROT_EXEC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression(DW_OP_constu, 448, DW_OP_stack_value))
!1046 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IRWXU", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!1048 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IRUSR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1049 = !DIGlobalVariableExpression(var: !1050, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!1050 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IWUSR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1051 = !DIGlobalVariableExpression(var: !1052, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!1052 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IXUSR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1053 = !DIGlobalVariableExpression(var: !1054, expr: !DIExpression(DW_OP_constu, 16777216, DW_OP_stack_value))
!1054 = distinct !DIGlobalVariable(name: "os::O_CLOEXEC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1055 = !DIGlobalVariableExpression(var: !1056, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!1056 = distinct !DIGlobalVariable(name: "os::SEEK_DATA", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1057 = !DIGlobalVariableExpression(var: !1058, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1058 = distinct !DIGlobalVariable(name: "os::SEEK_HOLE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1060 = distinct !DIGlobalVariable(name: "os::SEEK_MAX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1061 = !DIGlobalVariableExpression(var: !1062, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1062 = distinct !DIGlobalVariable(name: "os::RTLD_LAZY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1064 = distinct !DIGlobalVariable(name: "os::RTLD_NOW", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1065 = !DIGlobalVariableExpression(var: !1066, expr: !DIExpression(DW_OP_constu, 56, DW_OP_stack_value))
!1066 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IRWXG", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1067 = !DIGlobalVariableExpression(var: !1068, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!1068 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IRGRP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1069 = !DIGlobalVariableExpression(var: !1070, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1070 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IWGRP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1071 = !DIGlobalVariableExpression(var: !1072, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1072 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IXGRP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!1074 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IRWXO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1075 = !DIGlobalVariableExpression(var: !1076, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1076 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IROTH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1077 = !DIGlobalVariableExpression(var: !1078, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1078 = distinct !DIGlobalVariable(name: "os::RTLD_LOCAL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1080 = distinct !DIGlobalVariable(name: "os::RTLD_GLOBAL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1081 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!1082 = distinct !DIGlobalVariable(name: "os::RTLD_NODELETE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1084 = distinct !DIGlobalVariable(name: "os::RTLD_NOLOAD", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1085 = !DIGlobalVariableExpression(var: !1086, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!1086 = distinct !DIGlobalVariable(name: "os::RTLD_FIRST", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1087 = !DIGlobalVariableExpression(var: !1088, expr: !DIExpression(DW_OP_constu, 65535, DW_OP_stack_value))
!1088 = distinct !DIGlobalVariable(name: "os::SOL_SOCKET", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1090 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IWOTH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1092 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_IXOTH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression(DW_OP_constu, 2048, DW_OP_stack_value))
!1094 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_ISUID", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!1096 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_ISGID", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1097 = !DIGlobalVariableExpression(var: !1098, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!1098 = distinct !DIGlobalVariable(name: "darwin::PERMISSION_MASK_ISVTX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1100 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_RDONLY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1102 = distinct !DIGlobalVariable(name: "os::SOCK_STREAM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1103 = !DIGlobalVariableExpression(var: !1104, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1104 = distinct !DIGlobalVariable(name: "os::SOCK_DGRAM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!1106 = distinct !DIGlobalVariable(name: "os::SOCK_RAW", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1107 = !DIGlobalVariableExpression(var: !1108, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1108 = distinct !DIGlobalVariable(name: "os::SOCK_RDM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1109 = !DIGlobalVariableExpression(var: !1110, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!1110 = distinct !DIGlobalVariable(name: "os::SOCK_SEQPACKET", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1112 = distinct !DIGlobalVariable(name: "os::SO_DEBUG", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1114 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_WRONLY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1116 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_RDWR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1117 = !DIGlobalVariableExpression(var: !1118, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!1118 = distinct !DIGlobalVariable(name: "darwin::MASK_ACCMODE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1120 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_NONBLOCK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1122 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_APPEND", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!1124 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_CREAT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1126 = distinct !DIGlobalVariable(name: "os::SO_ACCEPTCONN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1128 = distinct !DIGlobalVariable(name: "os::SO_REUSEADDR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1129 = !DIGlobalVariableExpression(var: !1130, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1130 = distinct !DIGlobalVariable(name: "os::SO_KEEPALIVE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1131 = !DIGlobalVariableExpression(var: !1132, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1132 = distinct !DIGlobalVariable(name: "os::SO_DONTROUTE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!1134 = distinct !DIGlobalVariable(name: "os::SO_BROADCAST", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!1136 = distinct !DIGlobalVariable(name: "os::SO_USELOOPBACK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!1138 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_TRUNC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression(DW_OP_constu, 2048, DW_OP_stack_value))
!1140 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_EXCL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1142 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_SHLOCK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!1144 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_EXLOCK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression(DW_OP_constu, 1048576, DW_OP_stack_value))
!1146 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_DIRECTORY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!1148 = distinct !DIGlobalVariable(name: "os::SO_LINGER", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1149 = !DIGlobalVariableExpression(var: !1150, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!1150 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_NOFOLLOW", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1151 = !DIGlobalVariableExpression(var: !1152, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!1152 = distinct !DIGlobalVariable(name: "os::SO_OOBINLINE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1153 = !DIGlobalVariableExpression(var: !1154, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!1154 = distinct !DIGlobalVariable(name: "os::SO_REUSEPORT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1155 = !DIGlobalVariableExpression(var: !1156, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!1156 = distinct !DIGlobalVariable(name: "os::SO_TIMESTAMP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression(DW_OP_constu, 8192, DW_OP_stack_value))
!1158 = distinct !DIGlobalVariable(name: "os::SO_DONTTRUNC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression(DW_OP_constu, 16384, DW_OP_stack_value))
!1160 = distinct !DIGlobalVariable(name: "os::SO_WANTMORE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression(DW_OP_constu, 32768, DW_OP_stack_value))
!1162 = distinct !DIGlobalVariable(name: "os::SO_WANTOOBFLAG", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression(DW_OP_constu, 2097152, DW_OP_stack_value))
!1164 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_SYMLINK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression(DW_OP_constu, 32768, DW_OP_stack_value))
!1166 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_EVTONLY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression(DW_OP_constu, 4097, DW_OP_stack_value))
!1168 = distinct !DIGlobalVariable(name: "os::SO_SNDBUF", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression(DW_OP_constu, 4098, DW_OP_stack_value))
!1170 = distinct !DIGlobalVariable(name: "os::SO_RCVBUF", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression(DW_OP_constu, 4099, DW_OP_stack_value))
!1172 = distinct !DIGlobalVariable(name: "os::SO_SNDLOWAT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1173 = !DIGlobalVariableExpression(var: !1174, expr: !DIExpression(DW_OP_constu, 4100, DW_OP_stack_value))
!1174 = distinct !DIGlobalVariable(name: "os::SO_RCVLOWAT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression(DW_OP_constu, 4101, DW_OP_stack_value))
!1176 = distinct !DIGlobalVariable(name: "os::SO_SNDTIMEO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1177 = !DIGlobalVariableExpression(var: !1178, expr: !DIExpression(DW_OP_constu, 16777216, DW_OP_stack_value))
!1178 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_CLOEXEC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression(DW_OP_constu, 4102, DW_OP_stack_value))
!1180 = distinct !DIGlobalVariable(name: "os::SO_RCVTIMEO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression(DW_OP_constu, 536870912, DW_OP_stack_value))
!1182 = distinct !DIGlobalVariable(name: "darwin::OPEN_FLAG_NOFOLLOW_ANY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1183 = !DIGlobalVariableExpression(var: !1184, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1184 = distinct !DIGlobalVariable(name: "darwin::DARWIN_MAXCOMLEN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1185 = !DIGlobalVariableExpression(var: !1186, expr: !DIExpression(DW_OP_constu, 4103, DW_OP_stack_value))
!1186 = distinct !DIGlobalVariable(name: "os::SO_ERROR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression(DW_OP_constu, 4104, DW_OP_stack_value))
!1188 = distinct !DIGlobalVariable(name: "os::SO_TYPE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression(DW_OP_constu, 4105, DW_OP_stack_value))
!1190 = distinct !DIGlobalVariable(name: "os::SO_PRIVSTATE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression(DW_OP_constu, 4128, DW_OP_stack_value))
!1192 = distinct !DIGlobalVariable(name: "os::SO_NREAD", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression(DW_OP_constu, 4129, DW_OP_stack_value))
!1194 = distinct !DIGlobalVariable(name: "os::SO_NKE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1195 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1196 = distinct !DIGlobalVariable(name: "os::AF_UNSPEC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1197 = !DIGlobalVariableExpression(var: !1198, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1198 = distinct !DIGlobalVariable(name: "os::AF_LOCAL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1199 = !DIGlobalVariableExpression(var: !1200, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1200 = distinct !DIGlobalVariable(name: "os::AF_UNIX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1201 = !DIGlobalVariableExpression(var: !1202, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1202 = distinct !DIGlobalVariable(name: "os::AF_INET", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1203 = !DIGlobalVariableExpression(var: !1204, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!1204 = distinct !DIGlobalVariable(name: "os::AF_IMPLINK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1205 = !DIGlobalVariableExpression(var: !1206, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1206 = distinct !DIGlobalVariable(name: "os::AF_PUP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1207 = !DIGlobalVariableExpression(var: !1208, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!1208 = distinct !DIGlobalVariable(name: "os::AF_CHAOS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!1210 = distinct !DIGlobalVariable(name: "os::AF_NS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!1212 = distinct !DIGlobalVariable(name: "os::AF_ISO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!1214 = distinct !DIGlobalVariable(name: "os::AF_OSI", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1216 = distinct !DIGlobalVariable(name: "os::AF_ECMA", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression(DW_OP_constu, 9, DW_OP_stack_value))
!1218 = distinct !DIGlobalVariable(name: "os::AF_DATAKIT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1219 = !DIGlobalVariableExpression(var: !1220, expr: !DIExpression(DW_OP_constu, 10, DW_OP_stack_value))
!1220 = distinct !DIGlobalVariable(name: "os::AF_CCITT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1221 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression(DW_OP_constu, 11, DW_OP_stack_value))
!1222 = distinct !DIGlobalVariable(name: "os::AF_SNA", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1223 = !DIGlobalVariableExpression(var: !1224, expr: !DIExpression(DW_OP_constu, 12, DW_OP_stack_value))
!1224 = distinct !DIGlobalVariable(name: "os::AF_DECnet", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1225 = !DIGlobalVariableExpression(var: !1226, expr: !DIExpression(DW_OP_constu, 13, DW_OP_stack_value))
!1226 = distinct !DIGlobalVariable(name: "os::AF_DLI", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1227 = !DIGlobalVariableExpression(var: !1228, expr: !DIExpression(DW_OP_constu, 14, DW_OP_stack_value))
!1228 = distinct !DIGlobalVariable(name: "os::AF_LAT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1229 = !DIGlobalVariableExpression(var: !1230, expr: !DIExpression(DW_OP_constu, 15, DW_OP_stack_value))
!1230 = distinct !DIGlobalVariable(name: "os::AF_HYLINK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1231 = !DIGlobalVariableExpression(var: !1232, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1232 = distinct !DIGlobalVariable(name: "os::AF_APPLETALK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1233 = !DIGlobalVariableExpression(var: !1234, expr: !DIExpression(DW_OP_constu, 17, DW_OP_stack_value))
!1234 = distinct !DIGlobalVariable(name: "os::AF_ROUTE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1235 = !DIGlobalVariableExpression(var: !1236, expr: !DIExpression(DW_OP_constu, 18, DW_OP_stack_value))
!1236 = distinct !DIGlobalVariable(name: "os::AF_LINK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression(DW_OP_constu, 19, DW_OP_stack_value))
!1238 = distinct !DIGlobalVariable(name: "os::pseudo_AF_XTP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1239 = !DIGlobalVariableExpression(var: !1240, expr: !DIExpression(DW_OP_constu, 20, DW_OP_stack_value))
!1240 = distinct !DIGlobalVariable(name: "os::AF_COIP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1241 = !DIGlobalVariableExpression(var: !1242, expr: !DIExpression(DW_OP_constu, 21, DW_OP_stack_value))
!1242 = distinct !DIGlobalVariable(name: "os::AF_CNT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1243 = !DIGlobalVariableExpression(var: !1244, expr: !DIExpression(DW_OP_constu, 22, DW_OP_stack_value))
!1244 = distinct !DIGlobalVariable(name: "os::pseudo_AF_RTIP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression(DW_OP_constu, 23, DW_OP_stack_value))
!1246 = distinct !DIGlobalVariable(name: "os::AF_IPX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1247 = !DIGlobalVariableExpression(var: !1248, expr: !DIExpression(DW_OP_constu, 24, DW_OP_stack_value))
!1248 = distinct !DIGlobalVariable(name: "os::AF_SIP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1249 = !DIGlobalVariableExpression(var: !1250, expr: !DIExpression(DW_OP_constu, 25, DW_OP_stack_value))
!1250 = distinct !DIGlobalVariable(name: "os::pseudo_AF_PIP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1251 = !DIGlobalVariableExpression(var: !1252, expr: !DIExpression(DW_OP_constu, 26, DW_OP_stack_value))
!1252 = distinct !DIGlobalVariable(name: "os::pseudo_AF_BLUE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1253 = !DIGlobalVariableExpression(var: !1254, expr: !DIExpression(DW_OP_constu, 27, DW_OP_stack_value))
!1254 = distinct !DIGlobalVariable(name: "os::AF_NDRV", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1255 = !DIGlobalVariableExpression(var: !1256, expr: !DIExpression(DW_OP_constu, 28, DW_OP_stack_value))
!1256 = distinct !DIGlobalVariable(name: "os::AF_ISDN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1257 = !DIGlobalVariableExpression(var: !1258, expr: !DIExpression(DW_OP_constu, 28, DW_OP_stack_value))
!1258 = distinct !DIGlobalVariable(name: "os::AF_E164", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1259 = !DIGlobalVariableExpression(var: !1260, expr: !DIExpression(DW_OP_constu, 29, DW_OP_stack_value))
!1260 = distinct !DIGlobalVariable(name: "os::pseudo_AF_KEY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1261 = !DIGlobalVariableExpression(var: !1262, expr: !DIExpression(DW_OP_constu, 30, DW_OP_stack_value))
!1262 = distinct !DIGlobalVariable(name: "os::AF_INET6", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1263 = !DIGlobalVariableExpression(var: !1264, expr: !DIExpression(DW_OP_constu, 31, DW_OP_stack_value))
!1264 = distinct !DIGlobalVariable(name: "os::AF_NATM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1265 = !DIGlobalVariableExpression(var: !1266, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!1266 = distinct !DIGlobalVariable(name: "os::AF_SYSTEM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1267 = !DIGlobalVariableExpression(var: !1268, expr: !DIExpression(DW_OP_constu, 33, DW_OP_stack_value))
!1268 = distinct !DIGlobalVariable(name: "os::AF_NETBIOS", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression(DW_OP_constu, 34, DW_OP_stack_value))
!1270 = distinct !DIGlobalVariable(name: "os::AF_PPP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1271 = !DIGlobalVariableExpression(var: !1272, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1272 = distinct !DIGlobalVariable(name: "os::TCP_NODELAY", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1273 = !DIGlobalVariableExpression(var: !1274, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1274 = distinct !DIGlobalVariable(name: "os::TCP_MAXSEG", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1275 = !DIGlobalVariableExpression(var: !1276, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1276 = distinct !DIGlobalVariable(name: "os::TCP_NOPUSH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1277 = !DIGlobalVariableExpression(var: !1278, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1278 = distinct !DIGlobalVariable(name: "os::TCP_NOOPT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1280 = distinct !DIGlobalVariable(name: "os::IPPROTO_ICMP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!1282 = distinct !DIGlobalVariable(name: "os::IPPROTO_TCP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression(DW_OP_constu, 17, DW_OP_stack_value))
!1284 = distinct !DIGlobalVariable(name: "os::IPPROTO_UDP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1286 = distinct !DIGlobalVariable(name: "os::SHUT_RD", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1288 = distinct !DIGlobalVariable(name: "os::SHUT_WR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1290 = distinct !DIGlobalVariable(name: "os::SHUT_RDWR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!1292 = distinct !DIGlobalVariable(name: "os::F_GETFL", scope: null, type: !10, isLocal: false, isDefinition: true, align: 8)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1294 = distinct !DIGlobalVariable(name: "os::F_SETFL", scope: null, type: !10, isLocal: false, isDefinition: true, align: 8)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!1296 = distinct !DIGlobalVariable(name: "os::DARWIN_MAXPATHLEN", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression(DW_OP_constu, 61440, DW_OP_stack_value))
!1298 = distinct !DIGlobalVariable(name: "os::S_IFMT", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression(DW_OP_constu, 4096, DW_OP_stack_value))
!1300 = distinct !DIGlobalVariable(name: "os::S_IFIFO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression(DW_OP_constu, 8192, DW_OP_stack_value))
!1302 = distinct !DIGlobalVariable(name: "os::S_IFCHR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression(DW_OP_constu, 16384, DW_OP_stack_value))
!1304 = distinct !DIGlobalVariable(name: "os::S_IFDIR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression(DW_OP_constu, 24576, DW_OP_stack_value))
!1306 = distinct !DIGlobalVariable(name: "os::S_IFBLK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1307 = !DIGlobalVariableExpression(var: !1308, expr: !DIExpression(DW_OP_constu, 32768, DW_OP_stack_value))
!1308 = distinct !DIGlobalVariable(name: "os::S_IFREG", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression(DW_OP_constu, 40960, DW_OP_stack_value))
!1310 = distinct !DIGlobalVariable(name: "os::S_IFLNK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression(DW_OP_constu, 49152, DW_OP_stack_value))
!1312 = distinct !DIGlobalVariable(name: "os::S_IFSOCK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1313 = !DIGlobalVariableExpression(var: !1314, expr: !DIExpression(DW_OP_constu, 448, DW_OP_stack_value))
!1314 = distinct !DIGlobalVariable(name: "os::S_IRWXU", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1315 = !DIGlobalVariableExpression(var: !1316, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!1316 = distinct !DIGlobalVariable(name: "os::S_IRUSR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression(DW_OP_constu, 128, DW_OP_stack_value))
!1318 = distinct !DIGlobalVariable(name: "os::S_IWUSR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1319 = !DIGlobalVariableExpression(var: !1320, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!1320 = distinct !DIGlobalVariable(name: "os::S_IXUSR", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1321 = !DIGlobalVariableExpression(var: !1322, expr: !DIExpression(DW_OP_constu, 56, DW_OP_stack_value))
!1322 = distinct !DIGlobalVariable(name: "os::S_IRWXG", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1323 = !DIGlobalVariableExpression(var: !1324, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!1324 = distinct !DIGlobalVariable(name: "os::S_IRGRP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1325 = !DIGlobalVariableExpression(var: !1326, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!1326 = distinct !DIGlobalVariable(name: "os::S_IWGRP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1328 = distinct !DIGlobalVariable(name: "os::S_IXGRP", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!1330 = distinct !DIGlobalVariable(name: "os::S_IRWXO", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1332 = distinct !DIGlobalVariable(name: "os::S_IROTH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1334 = distinct !DIGlobalVariable(name: "os::S_IWOTH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1336 = distinct !DIGlobalVariable(name: "os::S_IXOTH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression(DW_OP_constu, 2048, DW_OP_stack_value))
!1338 = distinct !DIGlobalVariable(name: "os::S_ISUID", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!1340 = distinct !DIGlobalVariable(name: "os::S_ISGID", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression(DW_OP_constu, 512, DW_OP_stack_value))
!1342 = distinct !DIGlobalVariable(name: "os::S_ISVTX", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1343 = !DIGlobalVariableExpression(var: !1344, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1344 = distinct !DIGlobalVariable(name: "os::R_OK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1346 = distinct !DIGlobalVariable(name: "os::W_OK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1347 = !DIGlobalVariableExpression(var: !1348, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1348 = distinct !DIGlobalVariable(name: "os::X_OK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1349 = !DIGlobalVariableExpression(var: !1350, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1350 = distinct !DIGlobalVariable(name: "os::F_OK", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1351 = !DIGlobalVariableExpression(var: !1352, expr: !DIExpression(DW_OP_constu, 50, DW_OP_stack_value))
!1352 = distinct !DIGlobalVariable(name: "os::F_GETPATH", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1353 = !DIGlobalVariableExpression(var: !1354, expr: !DIExpression(DW_OP_constu, 2147483647, DW_OP_stack_value))
!1354 = distinct !DIGlobalVariable(name: "os::MAX_RW", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1355 = !DIGlobalVariableExpression(var: !1356, expr: !DIExpression(DW_OP_constu, 32, DW_OP_stack_value))
!1356 = distinct !DIGlobalVariable(name: "reflect::DEFAULT_EQUAL_MAX_RECURSION_LEVEL", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1357 = !DIGlobalVariableExpression(var: !1358, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!1358 = distinct !DIGlobalVariable(name: "unix::CLOCK_REALTIME", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1359 = !DIGlobalVariableExpression(var: !1360, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!1360 = distinct !DIGlobalVariable(name: "unix::CLOCK_MONOTONIC", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1361 = !DIGlobalVariableExpression(var: !1362, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!1362 = distinct !DIGlobalVariable(name: "unix::CLOCK_PROCESS_CPUTIME_ID", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1363 = !DIGlobalVariableExpression(var: !1364, expr: !DIExpression(DW_OP_constu, 3, DW_OP_stack_value))
!1364 = distinct !DIGlobalVariable(name: "unix::CLOCK_THREAD_CPUTIME_ID", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1365 = !DIGlobalVariableExpression(var: !1366, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!1366 = distinct !DIGlobalVariable(name: "unix::CLOCK_MONOTONIC_RAW", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1367 = !DIGlobalVariableExpression(var: !1368, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!1368 = distinct !DIGlobalVariable(name: "unix::CLOCK_REALTIME_COARSE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1369 = !DIGlobalVariableExpression(var: !1370, expr: !DIExpression(DW_OP_constu, 6, DW_OP_stack_value))
!1370 = distinct !DIGlobalVariable(name: "unix::CLOCK_MONOTONIC_COARSE", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1371 = !DIGlobalVariableExpression(var: !1372, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!1372 = distinct !DIGlobalVariable(name: "unix::CLOCK_BOOTTIME", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1373 = !DIGlobalVariableExpression(var: !1374, expr: !DIExpression(DW_OP_constu, 8, DW_OP_stack_value))
!1374 = distinct !DIGlobalVariable(name: "unix::CLOCK_REALTIME_ALARM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1375 = !DIGlobalVariableExpression(var: !1376, expr: !DIExpression(DW_OP_constu, 9, DW_OP_stack_value))
!1376 = distinct !DIGlobalVariable(name: "unix::CLOCK_BOOTTIME_ALARM", scope: null, type: !248, isLocal: false, isDefinition: true, align: 8)
!1377 = distinct !DISubprogram(name: "runtime.string_eq", linkageName: "runtime.string_eq", scope: !1378, file: !1378, line: 359, type: !1379, scopeLine: 359, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1378 = !DIFile(filename: "internal.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!168, !60, !60}
!1381 = !{}
!1382 = !DILocalVariable(name: "lhs", arg: 1, scope: !1377, file: !1378, line: 359, type: !60)
!1383 = !DILocation(line: 359, column: 34, scope: !1377)
!1384 = !DILocalVariable(name: "rhs", arg: 2, scope: !1377, file: !1378, line: 359, type: !60)
!1385 = !DILocation(line: 359, column: 39, scope: !1377)
!1386 = !DILocation(line: 360, column: 2, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !1378, line: 359, column: 60)
!1388 = !DILocation(line: 361, column: 2, scope: !1387)
!1389 = !DILocation(line: 359, column: 60, scope: !1377)
!1390 = !DILocalVariable(name: "x", scope: !1387, file: !1378, line: 360, type: !1391, align: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Raw_String", file: !2, line: 387, size: 128, align: 64, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "data", file: !2, baseType: !63, size: 64, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "len", file: !2, baseType: !10, size: 64, align: 64, offset: 64)
!1395 = !DILocalVariable(name: "y", scope: !1387, file: !1378, line: 361, type: !1391, align: 64)
!1396 = !DILocation(line: 362, column: 2, scope: !1387)
!1397 = !DILocation(line: 363, column: 3, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !1378, line: 362, column: 20)
!1399 = distinct !DILexicalBlock(scope: !1387, file: !1378, line: 362, column: 2)
!1400 = !DILocation(line: 365, column: 2, scope: !1387)
!1401 = distinct !DISubprogram(name: "runtime._destroy_temp_allocator_fini-3127", linkageName: "runtime._destroy_temp_allocator_fini-3127", scope: !19, file: !19, line: 59, type: !1402, scopeLine: 59, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null}
!1404 = !DILocalVariable(name: "context", scope: !1401, file: !19, line: 59, type: !1405, align: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Context", file: !2, line: 373, size: 768, align: 64, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1415, !1437, !1438, !1439}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", file: !2, baseType: !26, size: 128, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "temp_allocator", file: !2, baseType: !26, size: 128, align: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "assertion_failure_proc", file: !2, baseType: !1410, size: 64, align: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "Assertion_Failure_Proc", scope: !2, file: !2, line: 297, baseType: !1411, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc(string, string, Source_Code_Location)", baseType: !1412, align: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64, align: 64, dwarfAddressSpace: 0)
!1413 = !DISubroutineType(flags: DIFlagNoReturn, types: !1414)
!1414 = !{null, !60, !60, !57}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "logger", file: !2, baseType: !1416, size: 256, align: 64, offset: 320)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Logger", file: !2, line: 366, size: 256, align: 64, elements: !1417)
!1417 = !{!1418, !69, !1435, !1436}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "procedure", file: !2, baseType: !1419, size: 64, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "Logger_Proc", scope: !2, file: !2, line: 364, baseType: !1420, align: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc(rawptr, Logger_Level, string, bit_set[Logger_Option], Source_Code_Location)", baseType: !1421, align: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64, align: 64, dwarfAddressSpace: 0)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !6, !132, !60, !1424, !57}
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "bit_set[Logger_Option]", file: !2, line: 363, size: 16, align: 16, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "Level", scope: !2, file: !2, line: 363, baseType: !168, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "Date", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "Time", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "Short_File_Path", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "Long_File_Path", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "Line", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "Procedure", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "Terminal_Color", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "Thread_Id", scope: !2, file: !2, line: 363, baseType: !168, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_level", file: !2, baseType: !132, size: 64, align: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "options", file: !2, baseType: !1424, size: 16, align: 16, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "user_ptr", file: !2, baseType: !6, size: 64, align: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "user_index", file: !2, baseType: !10, size: 64, align: 64, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_internal", file: !2, baseType: !6, size: 64, align: 64, offset: 704)
!1440 = !DILocation(line: 59, column: 41, scope: !1401)
!1441 = !DILocation(line: 60, column: 3, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1401, file: !19, line: 59, column: 41)
!1443 = !DILocation(line: 61, column: 2, scope: !1401)
!1444 = distinct !DISubprogram(name: "runtime.safe_add-382", linkageName: "runtime.safe_add-382", scope: !23, file: !23, line: 25, type: !1445, scopeLine: 25, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!1447, !78, !78}
!1447 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, baseType: !78, size: 64, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, baseType: !168, size: 8, align: 8, offset: 64)
!1451 = !DILocalVariable(name: "x", arg: 1, scope: !1444, file: !23, line: 25, type: !78)
!1452 = !DILocation(line: 25, column: 47, scope: !1444)
!1453 = !DILocalVariable(name: "y", arg: 2, scope: !1444, file: !23, line: 25, type: !78)
!1454 = !DILocation(line: 25, column: 50, scope: !1444)
!1455 = !DILocation(line: 26, column: 2, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1444, file: !23, line: 25, column: 75)
!1457 = !DILocation(line: 27, column: 2, scope: !1456)
!1458 = !DILocation(line: 25, column: 75, scope: !1444)
!1459 = !DILocalVariable(name: "z", scope: !1456, file: !23, line: 26, type: !78, align: 64)
!1460 = !DILocalVariable(name: "did_overflow", scope: !1456, file: !23, line: 26, type: !168, align: 8)
!1461 = !DILocation(line: 26, column: 5, scope: !1456)
!1462 = distinct !DISubprogram(name: "runtime.memory_block_alloc", linkageName: "runtime.memory_block_alloc", scope: !23, file: !23, line: 31, type: !1463, scopeLine: 31, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !26, !78, !57}
!1465 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "block", baseType: !71, size: 64, align: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "err", baseType: !39, size: 8, align: 8, offset: 64)
!1469 = !DILocalVariable(name: "capacity", arg: 2, scope: !1462, file: !23, line: 31, type: !78)
!1470 = !DILocation(line: 31, column: 50, scope: !1462)
!1471 = !DILocalVariable(name: "loc", arg: 3, scope: !1462, file: !23, line: 31, type: !57)
!1472 = !DILocation(line: 31, column: 66, scope: !1462)
!1473 = !DILocalVariable(name: "context", scope: !1462, file: !23, line: 31, type: !1405, align: 64)
!1474 = !DILocation(line: 31, column: 139, scope: !1462)
!1475 = !DILocation(line: 32, column: 2, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1462, file: !23, line: 31, column: 139)
!1477 = !DILocation(line: 33, column: 2, scope: !1476)
!1478 = !DILocation(line: 35, column: 2, scope: !1476)
!1479 = !DILocation(line: 36, column: 2, scope: !1476)
!1480 = !DILocation(line: 38, column: 2, scope: !1476)
!1481 = !DILocation(line: 47, column: 2, scope: !1476)
!1482 = !DILocalVariable(name: "allocator", arg: 1, scope: !1462, file: !23, line: 31, type: !26)
!1483 = !DILocation(line: 31, column: 28, scope: !1462)
!1484 = !DILocalVariable(name: "block", scope: !1462, file: !23, line: 31, type: !71, align: 64)
!1485 = !DILocation(line: 31, column: 95, scope: !1462)
!1486 = !DILocalVariable(name: "err", scope: !1462, file: !23, line: 31, type: !39, align: 8)
!1487 = !DILocation(line: 31, column: 117, scope: !1462)
!1488 = !DILocalVariable(name: "total_size", scope: !1476, file: !23, line: 32, type: !78, align: 64)
!1489 = !DILocalVariable(name: "base_offset", scope: !1476, file: !23, line: 33, type: !1490, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr", baseType: !1491, align: 64)
!1491 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!1492 = !DILocalVariable(name: "min_alignment", scope: !1476, file: !23, line: 35, type: !10, align: 64)
!1493 = !DILocalVariable(name: "data", scope: !1476, file: !23, line: 36, type: !37, align: 64)
!1494 = !DILocation(line: 37, column: 8, scope: !1476)
!1495 = !DILocalVariable(name: "end", scope: !1476, file: !23, line: 38, type: !1490, align: 64)
!1496 = !DILocation(line: 40, column: 18, scope: !1476)
!1497 = !DILocation(line: 41, column: 13, scope: !1476)
!1498 = !DILocation(line: 42, column: 17, scope: !1476)
!1499 = !DILocation(line: 45, column: 2, scope: !1476)
!1500 = !DILocation(line: 46, column: 2, scope: !1476)
!1501 = distinct !DISubprogram(name: "runtime.memory_block_dealloc", linkageName: "runtime.memory_block_dealloc", scope: !23, file: !23, line: 50, type: !1502, scopeLine: 50, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !71, !57}
!1504 = !DILocalVariable(name: "block_to_free", arg: 1, scope: !1501, file: !23, line: 50, type: !71)
!1505 = !DILocation(line: 50, column: 30, scope: !1501)
!1506 = !DILocalVariable(name: "loc", arg: 2, scope: !1501, file: !23, line: 50, type: !57)
!1507 = !DILocation(line: 50, column: 60, scope: !1501)
!1508 = !DILocalVariable(name: "context", scope: !1501, file: !23, line: 50, type: !1405, align: 64)
!1509 = !DILocation(line: 50, column: 85, scope: !1501)
!1510 = !DILocation(line: 52, column: 3, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !23, line: 51, column: 26)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !23, line: 51, column: 2)
!1513 = distinct !DILexicalBlock(scope: !1501, file: !23, line: 50, column: 85)
!1514 = !DILocation(line: 51, column: 2, scope: !1513)
!1515 = !DILocalVariable(name: "allocator", scope: !1511, file: !23, line: 52, type: !26, align: 64)
!1516 = !DILocation(line: 53, column: 3, scope: !1511)
!1517 = !DILocation(line: 55, column: 1, scope: !1501)
!1518 = distinct !DISubprogram(name: "runtime.alloc_from_memory_block", linkageName: "runtime.alloc_from_memory_block", scope: !23, file: !23, line: 58, type: !1519, scopeLine: 58, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1521, !71, !78, !78}
!1521 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !37, size: 128, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "err", baseType: !39, size: 8, align: 8, offset: 128)
!1525 = !DILocalVariable(name: "block", arg: 1, scope: !1518, file: !23, line: 58, type: !71)
!1526 = !DILocation(line: 58, column: 33, scope: !1518)
!1527 = !DILocalVariable(name: "min_size", arg: 2, scope: !1518, file: !23, line: 58, type: !78)
!1528 = !DILocation(line: 58, column: 55, scope: !1518)
!1529 = !DILocalVariable(name: "alignment", arg: 3, scope: !1518, file: !23, line: 58, type: !78)
!1530 = !DILocation(line: 58, column: 65, scope: !1518)
!1531 = !DILocalVariable(name: "context", scope: !1518, file: !23, line: 58, type: !1405, align: 64)
!1532 = !DILocation(line: 58, column: 122, scope: !1518)
!1533 = !DILocation(line: 72, column: 2, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1518, file: !23, line: 58, column: 122)
!1535 = !DILocation(line: 73, column: 2, scope: !1534)
!1536 = !DILocation(line: 79, column: 5, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !23, line: 79, column: 2)
!1538 = !DILocation(line: 83, column: 7, scope: !1534)
!1539 = !DILocalVariable(name: "data", scope: !1518, file: !23, line: 58, type: !37, align: 64)
!1540 = !DILocation(line: 58, column: 86, scope: !1518)
!1541 = !DILocalVariable(name: "err", scope: !1518, file: !23, line: 58, type: !39, align: 8)
!1542 = !DILocation(line: 58, column: 100, scope: !1518)
!1543 = !DILocation(line: 69, column: 2, scope: !1534)
!1544 = !DILocation(line: 70, column: 3, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !23, line: 69, column: 18)
!1546 = distinct !DILexicalBlock(scope: !1534, file: !23, line: 69, column: 2)
!1547 = !DILocalVariable(name: "alignment_offset", scope: !1534, file: !23, line: 72, type: !78, align: 64)
!1548 = !DILocalVariable(name: "size", scope: !1534, file: !23, line: 73, type: !78, align: 64)
!1549 = !DILocalVariable(name: "size_ok", scope: !1534, file: !23, line: 73, type: !168, align: 8)
!1550 = !DILocation(line: 73, column: 8, scope: !1534)
!1551 = !DILocation(line: 74, column: 2, scope: !1534)
!1552 = !DILocation(line: 75, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !23, line: 74, column: 14)
!1554 = distinct !DILexicalBlock(scope: !1534, file: !23, line: 74, column: 2)
!1555 = !DILocation(line: 76, column: 3, scope: !1553)
!1556 = !DILocation(line: 79, column: 2, scope: !1534)
!1557 = !DILocalVariable(name: "to_be_used", scope: !1537, file: !23, line: 79, type: !78, align: 64)
!1558 = !DILocalVariable(name: "ok", scope: !1537, file: !23, line: 79, type: !168, align: 8)
!1559 = !DILocation(line: 79, column: 17, scope: !1537)
!1560 = !DILocation(line: 80, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1537, file: !23, line: 79, column: 86)
!1562 = !DILocation(line: 81, column: 3, scope: !1561)
!1563 = !DILocation(line: 84, column: 13, scope: !1534)
!1564 = !DILocation(line: 85, column: 2, scope: !1534)
!1565 = distinct !DISubprogram(name: "runtime.arena_alloc", linkageName: "runtime.arena_alloc", scope: !23, file: !23, line: 89, type: !1566, scopeLine: 89, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1521, !1568, !78, !78, !57}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64, dwarfAddressSpace: 0)
!1569 = !DILocalVariable(name: "arena", arg: 1, scope: !1565, file: !23, line: 89, type: !1568)
!1570 = !DILocation(line: 89, column: 21, scope: !1565)
!1571 = !DILocalVariable(name: "size", arg: 2, scope: !1565, file: !23, line: 89, type: !78)
!1572 = !DILocation(line: 89, column: 36, scope: !1565)
!1573 = !DILocalVariable(name: "alignment", arg: 3, scope: !1565, file: !23, line: 89, type: !78)
!1574 = !DILocation(line: 89, column: 42, scope: !1565)
!1575 = !DILocalVariable(name: "loc", arg: 4, scope: !1565, file: !23, line: 89, type: !57)
!1576 = !DILocation(line: 89, column: 59, scope: !1565)
!1577 = !DILocalVariable(name: "context", scope: !1565, file: !23, line: 89, type: !1405, align: 64)
!1578 = !DILocation(line: 89, column: 124, scope: !1565)
!1579 = !DILocation(line: 101, column: 2, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1565, file: !23, line: 89, column: 124)
!1581 = !DILocation(line: 106, column: 2, scope: !1580)
!1582 = !DILocation(line: 112, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !23, line: 106, column: 110)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !23, line: 106, column: 2)
!1585 = !DILocation(line: 115, column: 28, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !23, line: 114, column: 47)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !23, line: 114, column: 3)
!1588 = !DILocation(line: 118, column: 3, scope: !1583)
!1589 = !DILocation(line: 124, column: 2, scope: !1580)
!1590 = !DILocation(line: 125, column: 12, scope: !1580)
!1591 = !DILocalVariable(name: "data", scope: !1565, file: !23, line: 89, type: !37, align: 64)
!1592 = !DILocation(line: 89, column: 88, scope: !1565)
!1593 = !DILocalVariable(name: "err", scope: !1565, file: !23, line: 89, type: !39, align: 8)
!1594 = !DILocation(line: 89, column: 102, scope: !1565)
!1595 = !DILocation(line: 99, column: 2, scope: !1580)
!1596 = !DILocalVariable(name: "size", scope: !1580, file: !23, line: 101, type: !78, align: 64)
!1597 = !DILocation(line: 102, column: 2, scope: !1580)
!1598 = !DILocation(line: 103, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !23, line: 102, column: 15)
!1600 = distinct !DILexicalBlock(scope: !1580, file: !23, line: 102, column: 2)
!1601 = !DILocation(line: 107, column: 8, scope: !1583)
!1602 = !DILocation(line: 108, column: 3, scope: !1583)
!1603 = !DILocation(line: 109, column: 29, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !23, line: 108, column: 36)
!1605 = distinct !DILexicalBlock(scope: !1583, file: !23, line: 108, column: 3)
!1606 = !DILocalVariable(name: "block_size", scope: !1583, file: !23, line: 112, type: !78, align: 64)
!1607 = !DILocation(line: 114, column: 3, scope: !1583)
!1608 = !DILocalVariable(name: "new_block", scope: !1583, file: !23, line: 118, type: !71, align: 64)
!1609 = !DILocation(line: 119, column: 18, scope: !1583)
!1610 = !DILocation(line: 120, column: 20, scope: !1583)
!1611 = !DILocation(line: 121, column: 24, scope: !1583)
!1612 = !DILocalVariable(name: "prev_used", scope: !1580, file: !23, line: 124, type: !78, align: 64)
!1613 = !DILocation(line: 126, column: 19, scope: !1580)
!1614 = !DILocation(line: 127, column: 2, scope: !1580)
!1615 = distinct !DISubprogram(name: "runtime.arena_free_last_memory_block", linkageName: "runtime.arena_free_last_memory_block", scope: !23, file: !23, line: 144, type: !1616, scopeLine: 144, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1568, !57}
!1618 = !DILocalVariable(name: "arena", arg: 1, scope: !1615, file: !23, line: 144, type: !1568)
!1619 = !DILocation(line: 144, column: 38, scope: !1615)
!1620 = !DILocalVariable(name: "loc", arg: 2, scope: !1615, file: !23, line: 144, type: !57)
!1621 = !DILocation(line: 144, column: 53, scope: !1615)
!1622 = !DILocalVariable(name: "context", scope: !1615, file: !23, line: 144, type: !1405, align: 64)
!1623 = !DILocation(line: 144, column: 78, scope: !1615)
!1624 = !DILocation(line: 145, column: 5, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !23, line: 145, column: 2)
!1626 = distinct !DILexicalBlock(scope: !1615, file: !23, line: 144, column: 78)
!1627 = !DILocation(line: 145, column: 2, scope: !1626)
!1628 = !DILocalVariable(name: "free_block", scope: !1625, file: !23, line: 145, type: !71, align: 64)
!1629 = !DILocation(line: 146, column: 20, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !23, line: 145, column: 55)
!1631 = !DILocation(line: 148, column: 24, scope: !1630)
!1632 = !DILocation(line: 149, column: 3, scope: !1630)
!1633 = !DILocation(line: 151, column: 1, scope: !1615)
!1634 = distinct !DISubprogram(name: "runtime.arena_free_all", linkageName: "runtime.arena_free_all", scope: !23, file: !23, line: 154, type: !1616, scopeLine: 154, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1635 = !DILocalVariable(name: "arena", arg: 1, scope: !1634, file: !23, line: 154, type: !1568)
!1636 = !DILocation(line: 154, column: 24, scope: !1634)
!1637 = !DILocalVariable(name: "loc", arg: 2, scope: !1634, file: !23, line: 154, type: !57)
!1638 = !DILocation(line: 154, column: 39, scope: !1634)
!1639 = !DILocalVariable(name: "context", scope: !1634, file: !23, line: 154, type: !1405, align: 64)
!1640 = !DILocation(line: 154, column: 64, scope: !1634)
!1641 = !DILocation(line: 155, column: 2, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !23, line: 155, column: 2)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !23, line: 154, column: 64)
!1644 = !DILocation(line: 155, column: 6, scope: !1642)
!1645 = !DILocation(line: 156, column: 3, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !23, line: 155, column: 62)
!1647 = !DILocation(line: 157, column: 2, scope: !1642)
!1648 = !DILocation(line: 159, column: 2, scope: !1643)
!1649 = !DILocation(line: 160, column: 3, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !23, line: 159, column: 29)
!1651 = distinct !DILexicalBlock(scope: !1643, file: !23, line: 159, column: 2)
!1652 = !DILocation(line: 161, column: 25, scope: !1650)
!1653 = !DILocation(line: 163, column: 19, scope: !1643)
!1654 = !DILocation(line: 164, column: 1, scope: !1634)
!1655 = distinct !DISubprogram(name: "runtime.arena_destroy", linkageName: "runtime.arena_destroy", scope: !23, file: !23, line: 166, type: !1616, scopeLine: 166, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1656 = !DILocalVariable(name: "arena", arg: 1, scope: !1655, file: !23, line: 166, type: !1568)
!1657 = !DILocation(line: 166, column: 23, scope: !1655)
!1658 = !DILocalVariable(name: "loc", arg: 2, scope: !1655, file: !23, line: 166, type: !57)
!1659 = !DILocation(line: 166, column: 38, scope: !1655)
!1660 = !DILocalVariable(name: "context", scope: !1655, file: !23, line: 166, type: !1405, align: 64)
!1661 = !DILocation(line: 166, column: 63, scope: !1655)
!1662 = !DILocation(line: 168, column: 3, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !23, line: 167, column: 30)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !23, line: 167, column: 2)
!1665 = distinct !DILexicalBlock(scope: !1655, file: !23, line: 166, column: 63)
!1666 = !DILocation(line: 167, column: 2, scope: !1664)
!1667 = !DILocation(line: 167, column: 6, scope: !1664)
!1668 = !DILocalVariable(name: "free_block", scope: !1663, file: !23, line: 168, type: !71, align: 64)
!1669 = !DILocation(line: 169, column: 20, scope: !1663)
!1670 = !DILocation(line: 171, column: 24, scope: !1663)
!1671 = !DILocation(line: 172, column: 3, scope: !1663)
!1672 = !DILocation(line: 173, column: 2, scope: !1664)
!1673 = !DILocation(line: 174, column: 19, scope: !1665)
!1674 = !DILocation(line: 175, column: 23, scope: !1665)
!1675 = !DILocation(line: 176, column: 1, scope: !1655)
!1676 = distinct !DISubprogram(name: "runtime.arena_allocator_proc", linkageName: "runtime.arena_allocator_proc", scope: !23, file: !23, line: 182, type: !1677, scopeLine: 182, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1521, !6, !48, !10, !10, !6, !10, !57}
!1679 = !DILocalVariable(name: "allocator_data", arg: 1, scope: !1676, file: !23, line: 182, type: !6)
!1680 = !DILocation(line: 182, column: 30, scope: !1676)
!1681 = !DILocalVariable(name: "mode", arg: 2, scope: !1676, file: !23, line: 182, type: !48)
!1682 = !DILocation(line: 182, column: 54, scope: !1676)
!1683 = !DILocalVariable(name: "size", arg: 3, scope: !1676, file: !23, line: 183, type: !10)
!1684 = !DILocation(line: 183, column: 30, scope: !1676)
!1685 = !DILocalVariable(name: "alignment", arg: 4, scope: !1676, file: !23, line: 183, type: !10)
!1686 = !DILocation(line: 183, column: 36, scope: !1676)
!1687 = !DILocalVariable(name: "old_memory", arg: 5, scope: !1676, file: !23, line: 184, type: !6)
!1688 = !DILocation(line: 184, column: 30, scope: !1676)
!1689 = !DILocalVariable(name: "old_size", arg: 6, scope: !1676, file: !23, line: 184, type: !10)
!1690 = !DILocation(line: 184, column: 50, scope: !1676)
!1691 = !DILocalVariable(name: "location", arg: 7, scope: !1676, file: !23, line: 185, type: !57)
!1692 = !DILocation(line: 185, column: 30, scope: !1676)
!1693 = !DILocalVariable(name: "context", scope: !1676, file: !23, line: 185, type: !1405, align: 64)
!1694 = !DILocation(line: 185, column: 100, scope: !1676)
!1695 = !DILocation(line: 186, column: 2, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1676, file: !23, line: 185, column: 100)
!1697 = !DILocation(line: 188, column: 2, scope: !1696)
!1698 = !DILocation(line: 189, column: 2, scope: !1696)
!1699 = !DILocation(line: 193, column: 3, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !23, line: 191, column: 2)
!1701 = !DILocation(line: 199, column: 3, scope: !1700)
!1702 = !DILocation(line: 203, column: 4, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1676, file: !23, line: 201, column: 3)
!1704 = !DILocation(line: 206, column: 9, scope: !1703)
!1705 = !DILocation(line: 213, column: 9, scope: !1703)
!1706 = !DILocation(line: 217, column: 3, scope: !1700)
!1707 = !DILocation(line: 221, column: 3, scope: !1700)
!1708 = !DILocation(line: 224, column: 3, scope: !1700)
!1709 = !DILocalVariable(name: "data", scope: !1676, file: !23, line: 185, type: !37, align: 64)
!1710 = !DILocation(line: 185, column: 64, scope: !1676)
!1711 = !DILocalVariable(name: "err", scope: !1676, file: !23, line: 185, type: !39, align: 8)
!1712 = !DILocation(line: 185, column: 78, scope: !1676)
!1713 = !DILocalVariable(name: "arena", scope: !1696, file: !23, line: 186, type: !1568, align: 64)
!1714 = !DILocalVariable(name: "size", scope: !1696, file: !23, line: 188, type: !78, align: 64)
!1715 = !DILocalVariable(name: "alignment", scope: !1696, file: !23, line: 188, type: !78, align: 64)
!1716 = !DILocation(line: 188, column: 8, scope: !1696)
!1717 = !DILocalVariable(name: "old_size", scope: !1696, file: !23, line: 189, type: !78, align: 64)
!1718 = !DILocation(line: 191, column: 2, scope: !1696)
!1719 = !DILocation(line: 195, column: 7, scope: !1700)
!1720 = !DILocation(line: 197, column: 3, scope: !1700)
!1721 = !DILocalVariable(name: "old_data", scope: !1700, file: !23, line: 199, type: !63, align: 64)
!1722 = !DILocation(line: 201, column: 3, scope: !1700)
!1723 = !DILocation(line: 207, column: 4, scope: !1703)
!1724 = !DILocation(line: 210, column: 4, scope: !1703)
!1725 = !DILocation(line: 209, column: 8, scope: !1703)
!1726 = !DILocation(line: 214, column: 4, scope: !1703)
!1727 = !DILocalVariable(name: "new_memory", scope: !1700, file: !23, line: 217, type: !37, align: 64)
!1728 = !DILocation(line: 218, column: 3, scope: !1700)
!1729 = !DILocation(line: 219, column: 4, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !23, line: 218, column: 24)
!1731 = distinct !DILexicalBlock(scope: !1676, file: !23, line: 218, column: 3)
!1732 = !DILocation(line: 222, column: 3, scope: !1700)
!1733 = !DILocalVariable(name: "set", scope: !1700, file: !23, line: 224, type: !1734, align: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64, align: 64, dwarfAddressSpace: 0)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Allocator_Mode_Set", file: !2, line: 310, size: 8, align: 8, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "Alloc", scope: !2, file: !2, line: 310, baseType: !168, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "Free", scope: !2, file: !2, line: 310, baseType: !168, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "Free_All", scope: !2, file: !2, line: 310, baseType: !168, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "Resize", scope: !2, file: !2, line: 310, baseType: !168, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "Query_Features", scope: !2, file: !2, line: 310, baseType: !168, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "Query_Info", scope: !2, file: !2, line: 310, baseType: !168, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "Alloc_Non_Zeroed", scope: !2, file: !2, line: 310, baseType: !168, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DILocation(line: 225, column: 3, scope: !1700)
!1745 = !DILocation(line: 226, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !23, line: 225, column: 17)
!1747 = distinct !DILexicalBlock(scope: !1676, file: !23, line: 225, column: 3)
!1748 = !DILocation(line: 229, column: 7, scope: !1700)
!1749 = !DILocation(line: 232, column: 2, scope: !1696)
!1750 = distinct !DISubprogram(name: "runtime.bounds_trap", linkageName: "runtime.bounds_trap", scope: !1751, file: !1751, line: 3, type: !1752, scopeLine: 3, flags: DIFlagStaticMember | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1751 = !DIFile(filename: "error_checks.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!1752 = !DISubroutineType(flags: DIFlagNoReturn, types: !1403)
!1753 = !DILocation(line: 3, column: 43, scope: !1750)
!1754 = !DILocation(line: 7, column: 3, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !1751, line: 3, column: 43)
!1756 = distinct !DISubprogram(name: "runtime._os_write", linkageName: "runtime._os_write", scope: !1757, file: !1757, line: 8, type: !1758, scopeLine: 8, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1757 = !DIFile(filename: "os_specific_any.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1760, !37}
!1760 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !1761)
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, baseType: !10, size: 64, align: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, baseType: !1764, size: 64, align: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "_OS_Errno", scope: !1765, file: !1765, line: 3, baseType: !10, align: 64)
!1765 = !DIFile(filename: "os_specific.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!1766 = !DILocalVariable(name: "data", arg: 1, scope: !1756, file: !1757, line: 8, type: !37)
!1767 = !DILocation(line: 8, column: 34, scope: !1756)
!1768 = !DILocation(line: 9, column: 10, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1756, file: !1757, line: 8, column: 68)
!1770 = !DILocation(line: 10, column: 2, scope: !1769)
!1771 = !DILocation(line: 11, column: 2, scope: !1769)
!1772 = !DILocation(line: 8, column: 68, scope: !1756)
!1773 = !DILocalVariable(name: "context", scope: !1769, file: !1757, line: 9, type: !1405, align: 64)
!1774 = !DILocalVariable(name: "n", scope: !1769, file: !1757, line: 10, type: !10, align: 64)
!1775 = !DILocalVariable(name: "err", scope: !1769, file: !1757, line: 10, type: !344, align: 64)
!1776 = !DILocation(line: 10, column: 5, scope: !1769)
!1777 = distinct !DISubprogram(name: "runtime.slice_handle_error", linkageName: "runtime.slice_handle_error", scope: !1751, file: !1751, line: 37, type: !1778, scopeLine: 37, flags: DIFlagStaticMember | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1778 = !DISubroutineType(flags: DIFlagNoReturn, types: !1779)
!1779 = !{null, !60, !65, !65, !10, !10, !10}
!1780 = !DILocalVariable(name: "file", arg: 1, scope: !1777, file: !1751, line: 37, type: !60)
!1781 = !DILocation(line: 37, column: 43, scope: !1777)
!1782 = !DILocalVariable(name: "line", arg: 2, scope: !1777, file: !1751, line: 37, type: !65)
!1783 = !DILocation(line: 37, column: 57, scope: !1777)
!1784 = !DILocalVariable(name: "column", arg: 3, scope: !1777, file: !1751, line: 37, type: !65)
!1785 = !DILocation(line: 37, column: 63, scope: !1777)
!1786 = !DILocalVariable(name: "lo", arg: 4, scope: !1777, file: !1751, line: 37, type: !10)
!1787 = !DILocation(line: 37, column: 76, scope: !1777)
!1788 = !DILocalVariable(name: "hi", arg: 5, scope: !1777, file: !1751, line: 37, type: !10)
!1789 = !DILocation(line: 37, column: 80, scope: !1777)
!1790 = !DILocalVariable(name: "len", arg: 6, scope: !1777, file: !1751, line: 37, type: !10)
!1791 = !DILocation(line: 37, column: 89, scope: !1777)
!1792 = !DILocation(line: 38, column: 2, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1777, file: !1751, line: 37, column: 104)
!1794 = !DILocation(line: 37, column: 104, scope: !1777)
!1795 = !DILocation(line: 39, column: 2, scope: !1793)
!1796 = !DILocation(line: 40, column: 2, scope: !1793)
!1797 = !DILocation(line: 41, column: 2, scope: !1793)
!1798 = !DILocation(line: 42, column: 2, scope: !1793)
!1799 = !DILocation(line: 43, column: 2, scope: !1793)
!1800 = !DILocation(line: 44, column: 2, scope: !1793)
!1801 = !DILocation(line: 45, column: 2, scope: !1793)
!1802 = !DILocation(line: 46, column: 2, scope: !1793)
!1803 = distinct !DISubprogram(name: "runtime.multi_pointer_slice_handle_error", linkageName: "runtime.multi_pointer_slice_handle_error", scope: !1751, file: !1751, line: 49, type: !1804, scopeLine: 49, flags: DIFlagStaticMember | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1804 = !DISubroutineType(flags: DIFlagNoReturn, types: !1805)
!1805 = !{null, !60, !65, !65, !10, !10}
!1806 = !DILocalVariable(name: "file", arg: 1, scope: !1803, file: !1751, line: 49, type: !60)
!1807 = !DILocation(line: 49, column: 57, scope: !1803)
!1808 = !DILocalVariable(name: "line", arg: 2, scope: !1803, file: !1751, line: 49, type: !65)
!1809 = !DILocation(line: 49, column: 71, scope: !1803)
!1810 = !DILocalVariable(name: "column", arg: 3, scope: !1803, file: !1751, line: 49, type: !65)
!1811 = !DILocation(line: 49, column: 77, scope: !1803)
!1812 = !DILocalVariable(name: "lo", arg: 4, scope: !1803, file: !1751, line: 49, type: !10)
!1813 = !DILocation(line: 49, column: 90, scope: !1803)
!1814 = !DILocalVariable(name: "hi", arg: 5, scope: !1803, file: !1751, line: 49, type: !10)
!1815 = !DILocation(line: 49, column: 94, scope: !1803)
!1816 = !DILocation(line: 50, column: 2, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1803, file: !1751, line: 49, column: 108)
!1818 = !DILocation(line: 49, column: 108, scope: !1803)
!1819 = !DILocation(line: 51, column: 2, scope: !1817)
!1820 = !DILocation(line: 52, column: 2, scope: !1817)
!1821 = !DILocation(line: 53, column: 2, scope: !1817)
!1822 = !DILocation(line: 54, column: 2, scope: !1817)
!1823 = !DILocation(line: 55, column: 2, scope: !1817)
!1824 = !DILocation(line: 56, column: 2, scope: !1817)
!1825 = distinct !DISubprogram(name: "runtime.print_string", linkageName: "runtime.print_string", scope: !91, file: !91, line: 117, type: !1826, scopeLine: 117, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!10, !60}
!1828 = !DILocalVariable(name: "str", arg: 1, scope: !1825, file: !91, line: 117, type: !60)
!1829 = !DILocation(line: 117, column: 37, scope: !1825)
!1830 = !DILocation(line: 118, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !91, line: 117, column: 62)
!1832 = !DILocation(line: 117, column: 62, scope: !1825)
!1833 = !DILocalVariable(name: "n", scope: !1825, file: !91, line: 117, type: !10, align: 64)
!1834 = !DILocation(line: 117, column: 54, scope: !1825)
!1835 = !DILocation(line: 119, column: 2, scope: !1831)
!1836 = distinct !DISubprogram(name: "runtime.multi_pointer_slice_expr_error", linkageName: "runtime.multi_pointer_slice_expr_error", scope: !1751, file: !1751, line: 60, type: !1837, scopeLine: 60, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1837 = !DISubroutineType(types: !1805)
!1838 = !DILocalVariable(name: "file", arg: 1, scope: !1836, file: !1751, line: 60, type: !60)
!1839 = !DILocation(line: 60, column: 55, scope: !1836)
!1840 = !DILocalVariable(name: "line", arg: 2, scope: !1836, file: !1751, line: 60, type: !65)
!1841 = !DILocation(line: 60, column: 69, scope: !1836)
!1842 = !DILocalVariable(name: "column", arg: 3, scope: !1836, file: !1751, line: 60, type: !65)
!1843 = !DILocation(line: 60, column: 75, scope: !1836)
!1844 = !DILocalVariable(name: "lo", arg: 4, scope: !1836, file: !1751, line: 60, type: !10)
!1845 = !DILocation(line: 60, column: 88, scope: !1836)
!1846 = !DILocalVariable(name: "hi", arg: 5, scope: !1836, file: !1751, line: 60, type: !10)
!1847 = !DILocation(line: 60, column: 92, scope: !1836)
!1848 = !DILocation(line: 60, column: 101, scope: !1836)
!1849 = !DILocation(line: 61, column: 2, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1836, file: !1751, line: 60, column: 101)
!1851 = !DILocation(line: 62, column: 3, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !1751, line: 61, column: 14)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !1751, line: 61, column: 2)
!1854 = !DILocation(line: 64, column: 2, scope: !1850)
!1855 = distinct !DISubprogram(name: "runtime.slice_expr_error_hi", linkageName: "runtime.slice_expr_error_hi", scope: !1751, file: !1751, line: 67, type: !1837, scopeLine: 67, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1856 = !DILocalVariable(name: "file", arg: 1, scope: !1855, file: !1751, line: 67, type: !60)
!1857 = !DILocation(line: 67, column: 44, scope: !1855)
!1858 = !DILocalVariable(name: "line", arg: 2, scope: !1855, file: !1751, line: 67, type: !65)
!1859 = !DILocation(line: 67, column: 58, scope: !1855)
!1860 = !DILocalVariable(name: "column", arg: 3, scope: !1855, file: !1751, line: 67, type: !65)
!1861 = !DILocation(line: 67, column: 64, scope: !1855)
!1862 = !DILocalVariable(name: "hi", arg: 4, scope: !1855, file: !1751, line: 67, type: !10)
!1863 = !DILocation(line: 67, column: 77, scope: !1855)
!1864 = !DILocalVariable(name: "len", arg: 5, scope: !1855, file: !1751, line: 67, type: !10)
!1865 = !DILocation(line: 67, column: 86, scope: !1855)
!1866 = !DILocation(line: 67, column: 96, scope: !1855)
!1867 = !DILocation(line: 68, column: 2, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1855, file: !1751, line: 67, column: 96)
!1869 = !DILocation(line: 69, column: 3, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !1751, line: 68, column: 26)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !1751, line: 68, column: 2)
!1872 = !DILocation(line: 71, column: 2, scope: !1868)
!1873 = distinct !DISubprogram(name: "runtime.slice_expr_error_lo_hi", linkageName: "runtime.slice_expr_error_lo_hi", scope: !1751, file: !1751, line: 74, type: !1874, scopeLine: 74, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1874 = !DISubroutineType(types: !1779)
!1875 = !DILocalVariable(name: "file", arg: 1, scope: !1873, file: !1751, line: 74, type: !60)
!1876 = !DILocation(line: 74, column: 47, scope: !1873)
!1877 = !DILocalVariable(name: "line", arg: 2, scope: !1873, file: !1751, line: 74, type: !65)
!1878 = !DILocation(line: 74, column: 61, scope: !1873)
!1879 = !DILocalVariable(name: "column", arg: 3, scope: !1873, file: !1751, line: 74, type: !65)
!1880 = !DILocation(line: 74, column: 67, scope: !1873)
!1881 = !DILocalVariable(name: "lo", arg: 4, scope: !1873, file: !1751, line: 74, type: !10)
!1882 = !DILocation(line: 74, column: 80, scope: !1873)
!1883 = !DILocalVariable(name: "hi", arg: 5, scope: !1873, file: !1751, line: 74, type: !10)
!1884 = !DILocation(line: 74, column: 84, scope: !1873)
!1885 = !DILocalVariable(name: "len", arg: 6, scope: !1873, file: !1751, line: 74, type: !10)
!1886 = !DILocation(line: 74, column: 93, scope: !1873)
!1887 = !DILocation(line: 74, column: 103, scope: !1873)
!1888 = !DILocation(line: 75, column: 2, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1873, file: !1751, line: 74, column: 103)
!1890 = !DILocation(line: 76, column: 3, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !1751, line: 75, column: 51)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !1751, line: 75, column: 2)
!1893 = !DILocation(line: 78, column: 2, scope: !1889)
!1894 = distinct !DISubprogram(name: "runtime.make_slice_error_loc", linkageName: "runtime.make_slice_error_loc", scope: !1751, file: !1751, line: 223, type: !1895, scopeLine: 223, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !57, !10}
!1897 = !DILocalVariable(name: "loc", arg: 1, scope: !1894, file: !1751, line: 223, type: !57)
!1898 = !DILocation(line: 223, column: 59, scope: !1894)
!1899 = !DILocalVariable(name: "len", arg: 2, scope: !1894, file: !1751, line: 223, type: !10)
!1900 = !DILocation(line: 223, column: 84, scope: !1894)
!1901 = !DILocation(line: 223, column: 94, scope: !1894)
!1902 = !DILocation(line: 224, column: 2, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1894, file: !1751, line: 223, column: 94)
!1904 = !DILocation(line: 225, column: 3, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !1751, line: 224, column: 14)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !1751, line: 224, column: 2)
!1907 = !DILocation(line: 235, column: 2, scope: !1903)
!1908 = !DILocation(line: 236, column: 1, scope: !1894)
!1909 = distinct !DISubprogram(name: "runtime.udivmod128", linkageName: "runtime.udivmod128", scope: !1910, file: !1910, line: 5, type: !1911, scopeLine: 5, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!1910 = !DIFile(filename: "udivmod128.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!1913, !1913, !1913, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "u128", baseType: !1914, align: 128)
!1914 = !DIBasicType(name: "u128", size: 128, encoding: DW_ATE_unsigned)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64, align: 64, dwarfAddressSpace: 0)
!1916 = !DILocalVariable(name: "a", arg: 1, scope: !1909, file: !1910, line: 5, type: !1913)
!1917 = !DILocation(line: 5, column: 25, scope: !1909)
!1918 = !DILocalVariable(name: "b", arg: 2, scope: !1909, file: !1910, line: 5, type: !1913)
!1919 = !DILocation(line: 5, column: 28, scope: !1909)
!1920 = !DILocalVariable(name: "rem", arg: 3, scope: !1909, file: !1910, line: 5, type: !1915)
!1921 = !DILocation(line: 5, column: 37, scope: !1909)
!1922 = !DILocation(line: 9, column: 2, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1909, file: !1910, line: 5, column: 57)
!1924 = !DILocation(line: 10, column: 2, scope: !1923)
!1925 = !DILocation(line: 11, column: 2, scope: !1923)
!1926 = !DILocation(line: 12, column: 2, scope: !1923)
!1927 = !DILocation(line: 24, column: 5, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1910, line: 23, column: 18)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !1910, line: 23, column: 4)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !1910, line: 22, column: 19)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !1910, line: 22, column: 3)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !1910, line: 21, column: 18)
!1933 = distinct !DILexicalBlock(scope: !1923, file: !1910, line: 21, column: 2)
!1934 = !DILocation(line: 134, column: 2, scope: !1923)
!1935 = !DILocation(line: 135, column: 2, scope: !1923)
!1936 = !DILocation(line: 144, column: 3, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1910, line: 137, column: 24)
!1938 = distinct !DILexicalBlock(scope: !1923, file: !1910, line: 137, column: 2)
!1939 = !DILocation(line: 150, column: 2, scope: !1923)
!1940 = !DILocation(line: 5, column: 57, scope: !1909)
!1941 = !DILocalVariable(name: "n", scope: !1923, file: !1910, line: 9, type: !1942, align: 64)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 128, align: 64, elements: !1943)
!1943 = !{!1944}
!1944 = !DISubrange(count: 2, lowerBound: 0)
!1945 = !DILocalVariable(name: "d", scope: !1923, file: !1910, line: 10, type: !1942, align: 64)
!1946 = !DILocalVariable(name: "q", scope: !1923, file: !1910, line: 11, type: !1942, align: 64)
!1947 = !DILocalVariable(name: "r", scope: !1923, file: !1910, line: 11, type: !1942, align: 64)
!1948 = !DILocation(line: 11, column: 5, scope: !1923)
!1949 = !DILocalVariable(name: "sr", scope: !1923, file: !1910, line: 12, type: !357, align: 32)
!1950 = !DILocation(line: 21, column: 2, scope: !1923)
!1951 = !DILocation(line: 22, column: 3, scope: !1932)
!1952 = !DILocation(line: 23, column: 4, scope: !1930)
!1953 = !DILocalVariable(name: "res", scope: !1928, file: !1910, line: 24, type: !248, align: 64)
!1954 = !DILocation(line: 25, column: 10, scope: !1928)
!1955 = !DILocation(line: 27, column: 4, scope: !1930)
!1956 = !DILocation(line: 30, column: 3, scope: !1932)
!1957 = !DILocation(line: 31, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1910, line: 30, column: 17)
!1959 = distinct !DILexicalBlock(scope: !1932, file: !1910, line: 30, column: 3)
!1960 = !DILocation(line: 33, column: 3, scope: !1932)
!1961 = !DILocation(line: 36, column: 2, scope: !1923)
!1962 = !DILocation(line: 37, column: 3, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1910, line: 36, column: 17)
!1964 = distinct !DILexicalBlock(scope: !1923, file: !1910, line: 36, column: 2)
!1965 = !DILocation(line: 38, column: 4, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !1910, line: 37, column: 19)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !1910, line: 37, column: 3)
!1968 = !DILocation(line: 39, column: 10, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1910, line: 38, column: 18)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !1910, line: 38, column: 4)
!1971 = !DILocation(line: 41, column: 4, scope: !1966)
!1972 = !DILocation(line: 43, column: 3, scope: !1963)
!1973 = !DILocation(line: 44, column: 4, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1910, line: 43, column: 18)
!1975 = distinct !DILexicalBlock(scope: !1963, file: !1910, line: 43, column: 3)
!1976 = !DILocation(line: 45, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !1910, line: 44, column: 18)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !1910, line: 44, column: 4)
!1979 = !DILocation(line: 46, column: 12, scope: !1977)
!1980 = !DILocation(line: 47, column: 10, scope: !1977)
!1981 = !DILocation(line: 49, column: 4, scope: !1974)
!1982 = !DILocation(line: 52, column: 3, scope: !1963)
!1983 = !DILocation(line: 53, column: 4, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1910, line: 52, column: 33)
!1985 = distinct !DILexicalBlock(scope: !1963, file: !1910, line: 52, column: 3)
!1986 = !DILocation(line: 54, column: 12, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !1910, line: 53, column: 18)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !1910, line: 53, column: 4)
!1989 = !DILocation(line: 55, column: 13, scope: !1987)
!1990 = !DILocation(line: 56, column: 10, scope: !1987)
!1991 = !DILocation(line: 58, column: 4, scope: !1984)
!1992 = !DILocation(line: 61, column: 6, scope: !1963)
!1993 = !DILocation(line: 62, column: 3, scope: !1963)
!1994 = !DILocation(line: 63, column: 4, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !1910, line: 62, column: 24)
!1996 = distinct !DILexicalBlock(scope: !1963, file: !1910, line: 62, column: 3)
!1997 = !DILocation(line: 64, column: 10, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !1910, line: 63, column: 18)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !1910, line: 63, column: 4)
!2000 = !DILocation(line: 66, column: 4, scope: !1995)
!2001 = !DILocation(line: 69, column: 6, scope: !1963)
!2002 = !DILocation(line: 71, column: 11, scope: !1963)
!2003 = !DILocation(line: 72, column: 11, scope: !1963)
!2004 = !DILocation(line: 73, column: 11, scope: !1963)
!2005 = !DILocation(line: 74, column: 11, scope: !1963)
!2006 = !DILocation(line: 76, column: 3, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1964, file: !1910, line: 75, column: 9)
!2008 = !DILocation(line: 77, column: 4, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !1910, line: 76, column: 19)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !1910, line: 76, column: 3)
!2011 = !DILocation(line: 78, column: 5, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !1910, line: 77, column: 34)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !1910, line: 77, column: 4)
!2014 = !DILocation(line: 79, column: 11, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !1910, line: 78, column: 19)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !1910, line: 78, column: 5)
!2017 = !DILocation(line: 81, column: 5, scope: !2012)
!2018 = !DILocation(line: 82, column: 6, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !1910, line: 81, column: 20)
!2020 = distinct !DILexicalBlock(scope: !2012, file: !1910, line: 81, column: 5)
!2021 = !DILocation(line: 84, column: 8, scope: !2012)
!2022 = !DILocation(line: 85, column: 13, scope: !2012)
!2023 = !DILocation(line: 86, column: 12, scope: !2012)
!2024 = !DILocation(line: 87, column: 5, scope: !2012)
!2025 = !DILocation(line: 90, column: 7, scope: !2009)
!2026 = !DILocation(line: 92, column: 4, scope: !2009)
!2027 = !DILocation(line: 97, column: 13, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2009, file: !1910, line: 92, column: 4)
!2029 = !DILocation(line: 94, column: 13, scope: !2028)
!2030 = !DILocation(line: 95, column: 13, scope: !2028)
!2031 = !DILocation(line: 96, column: 13, scope: !2028)
!2032 = !DILocation(line: 102, column: 13, scope: !2028)
!2033 = !DILocation(line: 99, column: 13, scope: !2028)
!2034 = !DILocation(line: 100, column: 13, scope: !2028)
!2035 = !DILocation(line: 101, column: 13, scope: !2028)
!2036 = !DILocation(line: 104, column: 13, scope: !2028)
!2037 = !DILocation(line: 105, column: 13, scope: !2028)
!2038 = !DILocation(line: 106, column: 13, scope: !2028)
!2039 = !DILocation(line: 107, column: 13, scope: !2028)
!2040 = !DILocation(line: 110, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2010, file: !1910, line: 109, column: 10)
!2042 = !DILocation(line: 112, column: 4, scope: !2041)
!2043 = !DILocation(line: 113, column: 5, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !1910, line: 112, column: 25)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !1910, line: 112, column: 4)
!2046 = !DILocation(line: 114, column: 11, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !1910, line: 113, column: 19)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !1910, line: 113, column: 5)
!2049 = !DILocation(line: 116, column: 5, scope: !2044)
!2050 = !DILocation(line: 119, column: 7, scope: !2041)
!2051 = !DILocation(line: 121, column: 11, scope: !2041)
!2052 = !DILocation(line: 122, column: 4, scope: !2041)
!2053 = !DILocation(line: 123, column: 13, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !1910, line: 122, column: 22)
!2055 = distinct !DILexicalBlock(scope: !2041, file: !1910, line: 122, column: 4)
!2056 = !DILocation(line: 124, column: 13, scope: !2054)
!2057 = !DILocation(line: 125, column: 13, scope: !2054)
!2058 = !DILocation(line: 127, column: 13, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !1910, line: 126, column: 11)
!2060 = !DILocation(line: 128, column: 13, scope: !2059)
!2061 = !DILocation(line: 129, column: 13, scope: !2059)
!2062 = !DILocalVariable(name: "carry", scope: !1923, file: !1910, line: 134, type: !357, align: 32)
!2063 = !DILocalVariable(name: "r_all", scope: !1923, file: !1910, line: 135, type: !1913, align: 64)
!2064 = !DILocation(line: 137, column: 2, scope: !1938)
!2065 = !DILocation(line: 137, column: 8, scope: !1938)
!2066 = !DILocation(line: 138, column: 11, scope: !1937)
!2067 = !DILocation(line: 139, column: 11, scope: !1937)
!2068 = !DILocation(line: 140, column: 11, scope: !1937)
!2069 = !DILocation(line: 141, column: 11, scope: !1937)
!2070 = !DILocation(line: 143, column: 9, scope: !1937)
!2071 = !DILocalVariable(name: "s", scope: !1937, file: !1910, line: 144, type: !2072, align: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "i128", baseType: !2073, align: 128)
!2073 = !DIBasicType(name: "i128", size: 128, encoding: DW_ATE_signed)
!2074 = !DILocation(line: 145, column: 9, scope: !1937)
!2075 = !DILocation(line: 146, column: 9, scope: !1937)
!2076 = !DILocation(line: 147, column: 5, scope: !1937)
!2077 = !DILocation(line: 148, column: 2, scope: !1938)
!2078 = !DILocation(line: 137, column: 19, scope: !1938)
!2079 = !DILocalVariable(name: "q_all", scope: !1923, file: !1910, line: 150, type: !1913, align: 64)
!2080 = !DILocation(line: 151, column: 2, scope: !1923)
!2081 = !DILocation(line: 152, column: 8, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !1910, line: 151, column: 16)
!2083 = distinct !DILexicalBlock(scope: !1923, file: !1910, line: 151, column: 2)
!2084 = !DILocation(line: 155, column: 2, scope: !1923)
!2085 = distinct !DISubprogram(name: "runtime.mem_alloc_bytes", linkageName: "runtime.mem_alloc_bytes", scope: !1378, file: !1378, line: 131, type: !2086, scopeLine: 131, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!34, !10, !10, !26, !57}
!2088 = !DILocalVariable(name: "size", arg: 1, scope: !2085, file: !1378, line: 131, type: !10)
!2089 = !DILocation(line: 131, column: 39, scope: !2085)
!2090 = !DILocalVariable(name: "alignment", arg: 2, scope: !2085, file: !1378, line: 131, type: !10)
!2091 = !DILocation(line: 131, column: 50, scope: !2085)
!2092 = !DILocalVariable(name: "loc", arg: 4, scope: !2085, file: !1378, line: 131, type: !57)
!2093 = !DILocation(line: 131, column: 118, scope: !2085)
!2094 = !DILocalVariable(name: "context", scope: !2085, file: !1378, line: 131, type: !1405, align: 64)
!2095 = !DILocation(line: 131, column: 172, scope: !2085)
!2096 = !DILocation(line: 138, column: 2, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2085, file: !1378, line: 131, column: 172)
!2098 = !DILocalVariable(name: "allocator", arg: 3, scope: !2085, file: !1378, line: 131, type: !26)
!2099 = !DILocation(line: 131, column: 86, scope: !2085)
!2100 = !DILocation(line: 132, column: 2, scope: !2097)
!2101 = !DILocation(line: 133, column: 3, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !1378, line: 132, column: 15)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !1378, line: 132, column: 2)
!2104 = !DILocation(line: 135, column: 2, scope: !2097)
!2105 = !DILocation(line: 136, column: 3, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !1378, line: 135, column: 32)
!2107 = distinct !DILexicalBlock(scope: !2097, file: !1378, line: 135, column: 2)
!2108 = distinct !DISubprogram(name: "odinasm.pt0", linkageName: "odinasm.pt0", scope: !95, file: !95, line: 5, type: !2109, scopeLine: 5, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!10, !10, !10}
!2111 = !DILocalVariable(name: "x", arg: 1, scope: !2108, file: !95, line: 5, type: !10)
!2112 = !DILocation(line: 5, column: 14, scope: !2108)
!2113 = !DILocalVariable(name: "y", arg: 2, scope: !2108, file: !95, line: 5, type: !10)
!2114 = !DILocation(line: 5, column: 17, scope: !2108)
!2115 = !DILocalVariable(name: "context", scope: !2108, file: !95, line: 5, type: !1405, align: 64)
!2116 = !DILocation(line: 5, column: 33, scope: !2108)
!2117 = !DILocation(line: 6, column: 3, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2108, file: !95, line: 5, column: 33)
!2119 = distinct !DISubprogram(name: "runtime.mem_alloc", linkageName: "runtime.mem_alloc", scope: !1378, file: !1378, line: 141, type: !2086, scopeLine: 141, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2120 = !DILocalVariable(name: "size", arg: 1, scope: !2119, file: !1378, line: 141, type: !10)
!2121 = !DILocation(line: 141, column: 33, scope: !2119)
!2122 = !DILocalVariable(name: "alignment", arg: 2, scope: !2119, file: !1378, line: 141, type: !10)
!2123 = !DILocation(line: 141, column: 44, scope: !2119)
!2124 = !DILocalVariable(name: "loc", arg: 4, scope: !2119, file: !1378, line: 141, type: !57)
!2125 = !DILocation(line: 141, column: 112, scope: !2119)
!2126 = !DILocalVariable(name: "context", scope: !2119, file: !1378, line: 141, type: !1405, align: 64)
!2127 = !DILocation(line: 141, column: 166, scope: !2119)
!2128 = !DILocation(line: 145, column: 2, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2119, file: !1378, line: 141, column: 166)
!2130 = !DILocalVariable(name: "allocator", arg: 3, scope: !2119, file: !1378, line: 141, type: !26)
!2131 = !DILocation(line: 141, column: 80, scope: !2119)
!2132 = !DILocation(line: 142, column: 2, scope: !2129)
!2133 = !DILocation(line: 143, column: 3, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !1378, line: 142, column: 45)
!2135 = distinct !DILexicalBlock(scope: !2129, file: !1378, line: 142, column: 2)
!2136 = distinct !DISubprogram(name: "odinasm.pt1", linkageName: "odinasm.pt1", scope: !95, file: !95, line: 9, type: !2137, scopeLine: 9, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!10, !10}
!2139 = !DILocalVariable(name: "x", arg: 1, scope: !2136, file: !95, line: 9, type: !10)
!2140 = !DILocation(line: 9, column: 14, scope: !2136)
!2141 = !DILocalVariable(name: "context", scope: !2136, file: !95, line: 9, type: !1405, align: 64)
!2142 = !DILocation(line: 9, column: 30, scope: !2136)
!2143 = !DILocation(line: 10, column: 3, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2136, file: !95, line: 9, column: 30)
!2145 = distinct !DISubprogram(name: "odinasm.pt2", linkageName: "odinasm.pt2", scope: !95, file: !95, line: 13, type: !2146, scopeLine: 13, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2148, !2148}
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "any", scope: !2, file: !2, line: 1, size: 128, align: 64, elements: !2149)
!2149 = !{!5, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2, file: !2, line: 1, baseType: !2151, size: 64, align: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "typeid", baseType: !2152, align: 64)
!2152 = !DIBasicType(name: "typeid", size: 64, encoding: DW_ATE_unsigned)
!2153 = !DILocalVariable(name: "x", arg: 1, scope: !2145, file: !95, line: 13, type: !2148)
!2154 = !DILocation(line: 13, column: 14, scope: !2145)
!2155 = !DILocalVariable(name: "context", scope: !2145, file: !95, line: 13, type: !1405, align: 64)
!2156 = !DILocation(line: 13, column: 30, scope: !2145)
!2157 = !DILocation(line: 14, column: 3, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2145, file: !95, line: 13, column: 30)
!2159 = distinct !DISubprogram(name: "odinasm.pt3", linkageName: "odinasm.pt3", scope: !95, file: !95, line: 17, type: !2160, scopeLine: 17, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!2162, !2162}
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]int", size: 128, align: 64, elements: !4)
!2163 = !DILocalVariable(name: "x", arg: 1, scope: !2159, file: !95, line: 17, type: !2162)
!2164 = !DILocation(line: 17, column: 14, scope: !2159)
!2165 = !DILocalVariable(name: "context", scope: !2159, file: !95, line: 17, type: !1405, align: 64)
!2166 = !DILocation(line: 17, column: 34, scope: !2159)
!2167 = !DILocation(line: 18, column: 3, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2159, file: !95, line: 17, column: 34)
!2169 = distinct !DISubprogram(name: "odinasm.pt4", linkageName: "odinasm.pt4", scope: !95, file: !95, line: 21, type: !1826, scopeLine: 21, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2170 = !DILocalVariable(name: "s", arg: 1, scope: !2169, file: !95, line: 21, type: !60)
!2171 = !DILocation(line: 21, column: 14, scope: !2169)
!2172 = !DILocalVariable(name: "context", scope: !2169, file: !95, line: 21, type: !1405, align: 64)
!2173 = !DILocation(line: 21, column: 33, scope: !2169)
!2174 = !DILocation(line: 22, column: 3, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !95, line: 21, column: 33)
!2176 = distinct !DISubprogram(name: "runtime.mem_free", linkageName: "runtime.mem_free", scope: !1378, file: !1378, line: 155, type: !2177, scopeLine: 155, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!39, !6, !26, !57}
!2179 = !DILocalVariable(name: "ptr", arg: 1, scope: !2176, file: !1378, line: 155, type: !6)
!2180 = !DILocation(line: 155, column: 32, scope: !2176)
!2181 = !DILocalVariable(name: "loc", arg: 3, scope: !2176, file: !1378, line: 155, type: !57)
!2182 = !DILocation(line: 155, column: 77, scope: !2176)
!2183 = !DILocalVariable(name: "context", scope: !2176, file: !1378, line: 155, type: !1405, align: 64)
!2184 = !DILocation(line: 155, column: 121, scope: !2176)
!2185 = !DILocation(line: 159, column: 2, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2176, file: !1378, line: 155, column: 121)
!2187 = !DILocalVariable(name: "allocator", arg: 2, scope: !2176, file: !1378, line: 155, type: !26)
!2188 = !DILocation(line: 155, column: 45, scope: !2176)
!2189 = !DILocation(line: 156, column: 2, scope: !2186)
!2190 = !DILocation(line: 157, column: 3, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !1378, line: 156, column: 46)
!2192 = distinct !DILexicalBlock(scope: !2186, file: !1378, line: 156, column: 2)
!2193 = !DILocalVariable(name: "err", scope: !2186, file: !1378, line: 159, type: !39, align: 8)
!2194 = !DILocation(line: 159, column: 5, scope: !2186)
!2195 = !DILocation(line: 160, column: 2, scope: !2186)
!2196 = distinct !DISubprogram(name: "odinasm.pt5", linkageName: "odinasm.pt5", scope: !95, file: !95, line: 25, type: !2197, scopeLine: 25, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!60, !60}
!2199 = !DILocalVariable(name: "s", arg: 1, scope: !2196, file: !95, line: 25, type: !60)
!2200 = !DILocation(line: 25, column: 14, scope: !2196)
!2201 = !DILocalVariable(name: "context", scope: !2196, file: !95, line: 25, type: !1405, align: 64)
!2202 = !DILocation(line: 25, column: 36, scope: !2196)
!2203 = !DILocation(line: 26, column: 3, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2196, file: !95, line: 25, column: 36)
!2205 = distinct !DISubprogram(name: "odinasm.pt6", linkageName: "odinasm.pt6", scope: !95, file: !95, line: 30, type: !2197, scopeLine: 30, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2206 = !DILocalVariable(name: "s", arg: 1, scope: !2205, file: !95, line: 30, type: !60)
!2207 = !DILocation(line: 30, column: 14, scope: !2205)
!2208 = !DILocalVariable(name: "context", scope: !2205, file: !95, line: 30, type: !1405, align: 64)
!2209 = !DILocation(line: 30, column: 36, scope: !2205)
!2210 = !DILocation(line: 31, column: 3, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2205, file: !95, line: 30, column: 36)
!2212 = !DILocalVariable(name: "new_s", scope: !2211, file: !95, line: 31, type: !60, align: 64)
!2213 = !DILocation(line: 32, column: 3, scope: !2211)
!2214 = distinct !DISubprogram(name: "odinasm.pt7", linkageName: "odinasm.pt7", scope: !95, file: !95, line: 35, type: !2215, scopeLine: 35, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !6}
!2217 = !DILocalVariable(name: "p", arg: 1, scope: !2214, file: !95, line: 35, type: !6)
!2218 = !DILocation(line: 35, column: 14, scope: !2214)
!2219 = !DILocalVariable(name: "context", scope: !2214, file: !95, line: 35, type: !1405, align: 64)
!2220 = !DILocation(line: 35, column: 26, scope: !2214)
!2221 = !DILocation(line: 36, column: 1, scope: !2214)
!2222 = distinct !DISubprogram(name: "odinasm.pt8", linkageName: "odinasm.pt8", scope: !95, file: !95, line: 38, type: !2223, scopeLine: 38, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !60}
!2225 = !DILocalVariable(name: "s", arg: 1, scope: !2222, file: !95, line: 38, type: !60)
!2226 = !DILocation(line: 38, column: 14, scope: !2222)
!2227 = !DILocalVariable(name: "context", scope: !2222, file: !95, line: 38, type: !1405, align: 64)
!2228 = !DILocation(line: 38, column: 26, scope: !2222)
!2229 = !DILocation(line: 39, column: 5, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2222, file: !95, line: 38, column: 26)
!2231 = !DILocation(line: 40, column: 1, scope: !2222)
!2232 = distinct !DISubprogram(name: "odinasm.pt9", linkageName: "odinasm.pt9", scope: !95, file: !95, line: 42, type: !2223, scopeLine: 42, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2233 = !DILocalVariable(name: "s", arg: 1, scope: !2232, file: !95, line: 42, type: !60)
!2234 = !DILocation(line: 42, column: 14, scope: !2232)
!2235 = !DILocalVariable(name: "context", scope: !2232, file: !95, line: 42, type: !1405, align: 64)
!2236 = !DILocation(line: 42, column: 26, scope: !2232)
!2237 = !DILocation(line: 43, column: 5, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2232, file: !95, line: 42, column: 26)
!2239 = !DILocation(line: 44, column: 1, scope: !2232)
!2240 = distinct !DISubprogram(name: "odinasm.main", linkageName: "odinasm.main", scope: !95, file: !95, line: 47, type: !1402, scopeLine: 47, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2241 = !DILocalVariable(name: "context", scope: !2240, file: !95, line: 47, type: !1405, align: 64)
!2242 = !DILocation(line: 47, column: 17, scope: !2240)
!2243 = !DILocation(line: 48, column: 3, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !95, line: 47, column: 17)
!2245 = !DILocation(line: 49, column: 3, scope: !2244)
!2246 = !DILocation(line: 50, column: 3, scope: !2244)
!2247 = !DILocation(line: 51, column: 3, scope: !2244)
!2248 = !DILocation(line: 52, column: 3, scope: !2244)
!2249 = !DILocation(line: 53, column: 3, scope: !2244)
!2250 = !DILocation(line: 54, column: 3, scope: !2244)
!2251 = !DILocalVariable(name: "z0", scope: !2244, file: !95, line: 48, type: !10, align: 64)
!2252 = !DILocalVariable(name: "z1", scope: !2244, file: !95, line: 49, type: !10, align: 64)
!2253 = !DILocalVariable(name: "z2", scope: !2244, file: !95, line: 50, type: !2148, align: 64)
!2254 = !DILocalVariable(name: "z3", scope: !2244, file: !95, line: 51, type: !2162, align: 64)
!2255 = !DILocalVariable(name: "z4", scope: !2244, file: !95, line: 52, type: !10, align: 64)
!2256 = !DILocalVariable(name: "z5", scope: !2244, file: !95, line: 53, type: !60, align: 64)
!2257 = !DILocalVariable(name: "z6", scope: !2244, file: !95, line: 54, type: !60, align: 64)
!2258 = !DILocation(line: 55, column: 3, scope: !2244)
!2259 = !DILocation(line: 56, column: 3, scope: !2244)
!2260 = !DILocation(line: 57, column: 1, scope: !2240)
!2261 = distinct !DISubprogram(name: "runtime.memory_equal", linkageName: "runtime.memory_equal", scope: !1378, file: !1378, line: 216, type: !2262, scopeLine: 216, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!168, !6, !6, !10}
!2264 = !DILocalVariable(name: "x", arg: 1, scope: !2261, file: !1378, line: 216, type: !6)
!2265 = !DILocation(line: 216, column: 37, scope: !2261)
!2266 = !DILocalVariable(name: "y", arg: 2, scope: !2261, file: !1378, line: 216, type: !6)
!2267 = !DILocation(line: 216, column: 40, scope: !2261)
!2268 = !DILocalVariable(name: "n", arg: 3, scope: !2261, file: !1378, line: 216, type: !10)
!2269 = !DILocation(line: 216, column: 51, scope: !2261)
!2270 = !DILocation(line: 222, column: 2, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !1378, line: 216, column: 67)
!2272 = !DILocation(line: 223, column: 2, scope: !2271)
!2273 = !DILocation(line: 226, column: 6, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !1378, line: 226, column: 3)
!2275 = !DILocation(line: 227, column: 4, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2274, file: !1378, line: 226, column: 51)
!2277 = !DILocation(line: 228, column: 5, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !1378, line: 227, column: 29)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !1378, line: 227, column: 4)
!2280 = !DILocation(line: 231, column: 7, scope: !2278)
!2281 = !DILocation(line: 232, column: 7, scope: !2278)
!2282 = !DILocation(line: 237, column: 4, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !1378, line: 236, column: 22)
!2284 = distinct !DILexicalBlock(scope: !2271, file: !1378, line: 236, column: 3)
!2285 = !DILocation(line: 240, column: 6, scope: !2283)
!2286 = !DILocation(line: 241, column: 6, scope: !2283)
!2287 = !DILocation(line: 245, column: 4, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !1378, line: 244, column: 22)
!2289 = distinct !DILexicalBlock(scope: !2271, file: !1378, line: 244, column: 3)
!2290 = !DILocation(line: 248, column: 6, scope: !2288)
!2291 = !DILocation(line: 249, column: 6, scope: !2288)
!2292 = !DILocation(line: 216, column: 67, scope: !2261)
!2293 = !DILocation(line: 217, column: 2, scope: !2271)
!2294 = !DILocation(line: 218, column: 15, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2271, file: !1378, line: 217, column: 2)
!2296 = !DILocation(line: 219, column: 15, scope: !2295)
!2297 = !DILocalVariable(name: "a", scope: !2271, file: !1378, line: 222, type: !63, align: 64)
!2298 = !DILocalVariable(name: "b", scope: !2271, file: !1378, line: 222, type: !63, align: 64)
!2299 = !DILocation(line: 222, column: 5, scope: !2271)
!2300 = !DILocalVariable(name: "length", scope: !2271, file: !1378, line: 223, type: !78, align: 64)
!2301 = !DILocation(line: 226, column: 3, scope: !2271)
!2302 = !DILocalVariable(name: "word_length", scope: !2274, file: !1378, line: 226, type: !78, align: 64)
!2303 = !DILocation(line: 229, column: 6, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !1378, line: 228, column: 85)
!2305 = distinct !DILexicalBlock(scope: !2278, file: !1378, line: 228, column: 5)
!2306 = !DILocation(line: 236, column: 3, scope: !2271)
!2307 = !DILocation(line: 238, column: 5, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !1378, line: 237, column: 84)
!2309 = distinct !DILexicalBlock(scope: !2283, file: !1378, line: 237, column: 4)
!2310 = !DILocation(line: 244, column: 3, scope: !2271)
!2311 = !DILocation(line: 246, column: 5, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !1378, line: 245, column: 84)
!2313 = distinct !DILexicalBlock(scope: !2288, file: !1378, line: 245, column: 4)
!2314 = !DILocation(line: 252, column: 3, scope: !2271)
!2315 = !DILocation(line: 253, column: 4, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !1378, line: 252, column: 38)
!2317 = distinct !DILexicalBlock(scope: !2271, file: !1378, line: 252, column: 3)
!2318 = !DILocation(line: 255, column: 3, scope: !2271)
!2319 = distinct !DISubprogram(name: "runtime.os_write", linkageName: "runtime.os_write", scope: !1765, file: !1765, line: 5, type: !1758, scopeLine: 5, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2320 = !DILocalVariable(name: "data", arg: 1, scope: !2319, file: !1765, line: 5, type: !37)
!2321 = !DILocation(line: 5, column: 33, scope: !2319)
!2322 = !DILocation(line: 6, column: 2, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !1765, line: 5, column: 67)
!2324 = !DILocation(line: 5, column: 67, scope: !2319)
!2325 = distinct !DISubprogram(name: "runtime.print_byte", linkageName: "runtime.print_byte", scope: !91, file: !91, line: 133, type: !2326, scopeLine: 133, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!10, !40}
!2328 = !DILocalVariable(name: "b", arg: 1, scope: !2325, file: !91, line: 133, type: !40)
!2329 = !DILocation(line: 133, column: 35, scope: !2325)
!2330 = !DILocation(line: 134, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !91, line: 133, column: 56)
!2332 = !DILocation(line: 133, column: 56, scope: !2325)
!2333 = !DILocalVariable(name: "n", scope: !2325, file: !91, line: 133, type: !10, align: 64)
!2334 = !DILocation(line: 133, column: 48, scope: !2325)
!2335 = !DILocation(line: 135, column: 2, scope: !2331)
!2336 = distinct !DISubprogram(name: "runtime.print_u64", linkageName: "runtime.print_u64", scope: !91, file: !91, line: 178, type: !2337, scopeLine: 178, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !248}
!2339 = !DILocalVariable(name: "x", arg: 1, scope: !2336, file: !91, line: 178, type: !248)
!2340 = !DILocation(line: 178, column: 34, scope: !2336)
!2341 = !DILocation(line: 179, column: 2, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2336, file: !91, line: 178, column: 59)
!2343 = !DILocation(line: 180, column: 2, scope: !2342)
!2344 = !DILocation(line: 181, column: 2, scope: !2342)
!2345 = !DILocation(line: 182, column: 2, scope: !2342)
!2346 = !DILocation(line: 189, column: 2, scope: !2342)
!2347 = !DILocation(line: 178, column: 59, scope: !2336)
!2348 = !DILocalVariable(name: "a", scope: !2342, file: !91, line: 179, type: !2349, align: 8)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1032, align: 8, elements: !2350)
!2350 = !{!2351}
!2351 = !DISubrange(count: 129, lowerBound: 0)
!2352 = !DILocalVariable(name: "i", scope: !2342, file: !91, line: 180, type: !10, align: 64)
!2353 = !DILocalVariable(name: "b", scope: !2342, file: !91, line: 181, type: !248, align: 64)
!2354 = !DILocalVariable(name: "u", scope: !2342, file: !91, line: 182, type: !248, align: 64)
!2355 = !DILocation(line: 183, column: 2, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2342, file: !91, line: 183, column: 2)
!2357 = !DILocation(line: 183, column: 6, scope: !2356)
!2358 = !DILocation(line: 184, column: 5, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2356, file: !91, line: 183, column: 13)
!2360 = !DILocation(line: 184, column: 16, scope: !2359)
!2361 = !DILocation(line: 185, column: 5, scope: !2359)
!2362 = !DILocation(line: 186, column: 2, scope: !2356)
!2363 = !DILocation(line: 187, column: 4, scope: !2342)
!2364 = !DILocation(line: 187, column: 15, scope: !2342)
!2365 = !DILocation(line: 190, column: 1, scope: !2336)
!2366 = distinct !DISubprogram(name: "runtime.print_i64", linkageName: "runtime.print_i64", scope: !91, file: !91, line: 193, type: !2367, scopeLine: 193, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !469}
!2369 = !DILocalVariable(name: "x", arg: 1, scope: !2366, file: !91, line: 193, type: !469)
!2370 = !DILocation(line: 193, column: 34, scope: !2366)
!2371 = !DILocation(line: 196, column: 2, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2366, file: !91, line: 193, column: 59)
!2373 = !DILocation(line: 197, column: 2, scope: !2372)
!2374 = !DILocation(line: 200, column: 2, scope: !2372)
!2375 = !DILocation(line: 201, column: 2, scope: !2372)
!2376 = !DILocation(line: 211, column: 2, scope: !2372)
!2377 = !DILocation(line: 193, column: 59, scope: !2366)
!2378 = !DILocalVariable(name: "u", scope: !2372, file: !91, line: 196, type: !469, align: 64)
!2379 = !DILocalVariable(name: "neg", scope: !2372, file: !91, line: 197, type: !168, align: 8)
!2380 = !DILocation(line: 198, column: 4, scope: !2372)
!2381 = !DILocalVariable(name: "a", scope: !2372, file: !91, line: 200, type: !2349, align: 8)
!2382 = !DILocalVariable(name: "i", scope: !2372, file: !91, line: 201, type: !10, align: 64)
!2383 = !DILocation(line: 202, column: 2, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2372, file: !91, line: 202, column: 2)
!2385 = !DILocation(line: 202, column: 6, scope: !2384)
!2386 = !DILocation(line: 203, column: 5, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !91, line: 202, column: 13)
!2388 = !DILocation(line: 203, column: 16, scope: !2387)
!2389 = !DILocation(line: 204, column: 5, scope: !2387)
!2390 = !DILocation(line: 205, column: 2, scope: !2384)
!2391 = !DILocation(line: 206, column: 4, scope: !2372)
!2392 = !DILocation(line: 206, column: 15, scope: !2372)
!2393 = !DILocation(line: 207, column: 2, scope: !2372)
!2394 = !DILocation(line: 208, column: 5, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !91, line: 207, column: 9)
!2396 = distinct !DILexicalBlock(scope: !2372, file: !91, line: 207, column: 2)
!2397 = !DILocation(line: 208, column: 16, scope: !2395)
!2398 = !DILocation(line: 212, column: 1, scope: !2366)
!2399 = distinct !DISubprogram(name: "runtime.print_caller_location", linkageName: "runtime.print_caller_location", scope: !91, file: !91, line: 218, type: !2400, scopeLine: 218, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !57}
!2402 = !DILocalVariable(name: "loc", arg: 1, scope: !2399, file: !91, line: 218, type: !57)
!2403 = !DILocation(line: 218, column: 52, scope: !2399)
!2404 = !DILocation(line: 218, column: 79, scope: !2399)
!2405 = !DILocation(line: 219, column: 2, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2399, file: !91, line: 218, column: 79)
!2407 = !DILocalVariable(name: "file_path", scope: !2406, file: !91, line: 218, type: !60, align: 64)
!2408 = !DILocation(line: 218, column: 52, scope: !2406)
!2409 = !DILocation(line: 221, column: 3, scope: !2406)
!2410 = !DILocation(line: 222, column: 3, scope: !2406)
!2411 = !DILocalVariable(name: "line", scope: !2406, file: !91, line: 218, type: !65, align: 32)
!2412 = !DILocation(line: 223, column: 3, scope: !2406)
!2413 = !DILocation(line: 224, column: 3, scope: !2406)
!2414 = !DILocalVariable(name: "column", scope: !2406, file: !91, line: 218, type: !65, align: 32)
!2415 = !DILocation(line: 225, column: 3, scope: !2406)
!2416 = !DILocation(line: 235, column: 1, scope: !2399)
!2417 = distinct !DISubprogram(name: "strings.clone", linkageName: "strings.clone", scope: !2418, file: !2418, line: 23, type: !2419, scopeLine: 23, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2418 = !DIFile(filename: "strings.odin", directory: "/Users/tarvydas/tools/Odin/core/strings")
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2421, !60, !26, !57}
!2421 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !2422)
!2422 = !{!2423, !1524}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "res", baseType: !60, size: 128, align: 64)
!2424 = !DILocalVariable(name: "s", arg: 1, scope: !2417, file: !2418, line: 23, type: !60)
!2425 = !DILocation(line: 23, column: 15, scope: !2417)
!2426 = !DILocalVariable(name: "loc", arg: 3, scope: !2417, file: !2418, line: 23, type: !57)
!2427 = !DILocation(line: 23, column: 58, scope: !2417)
!2428 = !DILocalVariable(name: "context", scope: !2417, file: !2418, line: 23, type: !1405, align: 64)
!2429 = !DILocation(line: 23, column: 152, scope: !2417)
!2430 = !DILocation(line: 24, column: 2, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2417, file: !2418, line: 23, column: 152)
!2432 = !DILocation(line: 26, column: 2, scope: !2431)
!2433 = !DILocalVariable(name: "allocator", arg: 2, scope: !2417, file: !2418, line: 23, type: !26)
!2434 = !DILocation(line: 23, column: 26, scope: !2417)
!2435 = !DILocalVariable(name: "res", scope: !2417, file: !2418, line: 23, type: !60, align: 64)
!2436 = !DILocation(line: 23, column: 87, scope: !2417)
!2437 = !DILocalVariable(name: "err", scope: !2417, file: !2418, line: 23, type: !39, align: 8)
!2438 = !DILocation(line: 23, column: 100, scope: !2417)
!2439 = !DILocalVariable(name: "c", scope: !2431, file: !2418, line: 24, type: !37, align: 64)
!2440 = !DILocation(line: 25, column: 2, scope: !2431)
!2441 = distinct !DISubprogram(name: "runtime.default_logger_proc", linkageName: "runtime.default_logger_proc", scope: !2, file: !2, line: 590, type: !1422, scopeLine: 590, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2442 = !DILocalVariable(name: "data", arg: 1, scope: !2441, file: !2, line: 590, type: !6)
!2443 = !DILocation(line: 590, column: 29, scope: !2441)
!2444 = !DILocalVariable(name: "level", arg: 2, scope: !2441, file: !2, line: 590, type: !132)
!2445 = !DILocation(line: 590, column: 43, scope: !2441)
!2446 = !DILocalVariable(name: "text", arg: 3, scope: !2441, file: !2, line: 590, type: !60)
!2447 = !DILocation(line: 590, column: 64, scope: !2441)
!2448 = !DILocalVariable(name: "options", arg: 4, scope: !2441, file: !2, line: 590, type: !1424)
!2449 = !DILocation(line: 590, column: 78, scope: !2441)
!2450 = !DILocalVariable(name: "location", arg: 5, scope: !2441, file: !2, line: 590, type: !57)
!2451 = !DILocation(line: 590, column: 103, scope: !2441)
!2452 = !DILocalVariable(name: "context", scope: !2441, file: !2, line: 590, type: !1405, align: 64)
!2453 = !DILocation(line: 590, column: 133, scope: !2441)
!2454 = !DILocation(line: 592, column: 1, scope: !2441)
!2455 = distinct !DISubprogram(name: "runtime.default_context", linkageName: "runtime.default_context", scope: !2, file: !2, line: 599, type: !2456, scopeLine: 599, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!1405}
!2458 = !DILocation(line: 600, column: 2, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !2, line: 599, column: 53)
!2460 = !DILocation(line: 599, column: 53, scope: !2455)
!2461 = !DILocalVariable(name: "c", scope: !2459, file: !2, line: 600, type: !1405, align: 64)
!2462 = !DILocation(line: 601, column: 2, scope: !2459)
!2463 = !DILocation(line: 602, column: 2, scope: !2459)
!2464 = distinct !DISubprogram(name: "runtime.__init_context-862", linkageName: "runtime.__init_context-862", scope: !2, file: !2, line: 615, type: !2465, scopeLine: 615, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64, align: 64, dwarfAddressSpace: 0)
!2468 = !DILocalVariable(name: "c", arg: 1, scope: !2464, file: !2, line: 615, type: !2467)
!2469 = !DILocation(line: 615, column: 39, scope: !2464)
!2470 = !DILocation(line: 615, column: 52, scope: !2464)
!2471 = !DILocation(line: 616, column: 2, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2464, file: !2, line: 615, column: 52)
!2473 = !DILocation(line: 617, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !2, line: 616, column: 14)
!2475 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 616, column: 2)
!2476 = !DILocation(line: 621, column: 24, scope: !2472)
!2477 = !DILocation(line: 622, column: 19, scope: !2472)
!2478 = !DILocation(line: 624, column: 29, scope: !2472)
!2479 = !DILocation(line: 626, column: 25, scope: !2472)
!2480 = !DILocation(line: 630, column: 28, scope: !2472)
!2481 = !DILocation(line: 633, column: 21, scope: !2472)
!2482 = !DILocation(line: 634, column: 16, scope: !2472)
!2483 = !DILocation(line: 635, column: 1, scope: !2464)
!2484 = distinct !DISubprogram(name: "runtime.default_assertion_failure_proc", linkageName: "runtime.default_assertion_failure_proc", scope: !2, file: !2, line: 637, type: !1413, scopeLine: 637, flags: DIFlagStaticMember | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2485 = !DILocalVariable(name: "prefix", arg: 1, scope: !2484, file: !2, line: 637, type: !60)
!2486 = !DILocation(line: 637, column: 40, scope: !2484)
!2487 = !DILocalVariable(name: "message", arg: 2, scope: !2484, file: !2, line: 637, type: !60)
!2488 = !DILocation(line: 637, column: 48, scope: !2484)
!2489 = !DILocalVariable(name: "loc", arg: 3, scope: !2484, file: !2, line: 637, type: !57)
!2490 = !DILocation(line: 637, column: 65, scope: !2484)
!2491 = !DILocalVariable(name: "context", scope: !2484, file: !2, line: 637, type: !1405, align: 64)
!2492 = !DILocation(line: 637, column: 97, scope: !2484)
!2493 = !DILocation(line: 641, column: 3, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 637, column: 97)
!2495 = !DILocation(line: 642, column: 3, scope: !2494)
!2496 = !DILocation(line: 643, column: 3, scope: !2494)
!2497 = !DILocation(line: 644, column: 3, scope: !2494)
!2498 = !DILocation(line: 645, column: 4, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !2, line: 644, column: 23)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 644, column: 3)
!2501 = !DILocation(line: 646, column: 4, scope: !2499)
!2502 = !DILocation(line: 648, column: 3, scope: !2494)
!2503 = !DILocation(line: 650, column: 2, scope: !2494)
!2504 = distinct !DISubprogram(name: "os.heap_allocator_proc", linkageName: "os.heap_allocator_proc", scope: !2505, file: !2505, line: 171, type: !32, scopeLine: 171, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2505 = !DIFile(filename: "os.odin", directory: "/Users/tarvydas/tools/Odin/core/os")
!2506 = !DILocalVariable(name: "allocator_data", arg: 1, scope: !2504, file: !2505, line: 171, type: !6)
!2507 = !DILocation(line: 171, column: 29, scope: !2504)
!2508 = !DILocalVariable(name: "mode", arg: 2, scope: !2504, file: !2505, line: 171, type: !48)
!2509 = !DILocation(line: 171, column: 53, scope: !2504)
!2510 = !DILocalVariable(name: "size", arg: 3, scope: !2504, file: !2505, line: 172, type: !10)
!2511 = !DILocation(line: 172, column: 29, scope: !2504)
!2512 = !DILocalVariable(name: "alignment", arg: 4, scope: !2504, file: !2505, line: 172, type: !10)
!2513 = !DILocation(line: 172, column: 35, scope: !2504)
!2514 = !DILocalVariable(name: "old_memory", arg: 5, scope: !2504, file: !2505, line: 173, type: !6)
!2515 = !DILocation(line: 173, column: 29, scope: !2504)
!2516 = !DILocalVariable(name: "old_size", arg: 6, scope: !2504, file: !2505, line: 173, type: !10)
!2517 = !DILocation(line: 173, column: 49, scope: !2504)
!2518 = !DILocalVariable(name: "loc", arg: 7, scope: !2504, file: !2505, line: 173, type: !57)
!2519 = !DILocation(line: 173, column: 64, scope: !2504)
!2520 = !DILocalVariable(name: "context", scope: !2504, file: !2505, line: 173, type: !1405, align: 64)
!2521 = !DILocation(line: 173, column: 122, scope: !2504)
!2522 = !DILocation(line: 230, column: 3, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !2505, line: 228, column: 2)
!2524 = distinct !DILexicalBlock(scope: !2504, file: !2505, line: 173, column: 122)
!2525 = !DILocation(line: 240, column: 4, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2505, line: 239, column: 24)
!2527 = distinct !DILexicalBlock(scope: !2504, file: !2505, line: 239, column: 3)
!2528 = !DILocation(line: 242, column: 3, scope: !2523)
!2529 = !DILocation(line: 245, column: 3, scope: !2523)
!2530 = !DILocation(line: 228, column: 2, scope: !2524)
!2531 = !DILocation(line: 233, column: 3, scope: !2523)
!2532 = !DILocation(line: 236, column: 3, scope: !2523)
!2533 = !DILocation(line: 239, column: 3, scope: !2523)
!2534 = !DILocalVariable(name: "set", scope: !2523, file: !2505, line: 245, type: !1734, align: 64)
!2535 = !DILocation(line: 246, column: 3, scope: !2523)
!2536 = !DILocation(line: 247, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !2505, line: 246, column: 17)
!2538 = distinct !DILexicalBlock(scope: !2504, file: !2505, line: 246, column: 3)
!2539 = !DILocation(line: 249, column: 3, scope: !2523)
!2540 = !DILocation(line: 252, column: 3, scope: !2523)
!2541 = !DILocation(line: 255, column: 2, scope: !2524)
!2542 = distinct !DISubprogram(name: "runtime.assert", linkageName: "runtime.assert", scope: !17, file: !17, line: 800, type: !2543, scopeLine: 800, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !168, !60, !57}
!2545 = !DILocalVariable(name: "message", arg: 2, scope: !2542, file: !17, line: 800, type: !60)
!2546 = !DILocation(line: 800, column: 33, scope: !2542)
!2547 = !DILocalVariable(name: "loc", arg: 3, scope: !2542, file: !17, line: 800, type: !57)
!2548 = !DILocation(line: 800, column: 48, scope: !2542)
!2549 = !DILocalVariable(name: "context", scope: !2542, file: !17, line: 800, type: !1405, align: 64)
!2550 = !DILocation(line: 800, column: 73, scope: !2542)
!2551 = !DILocalVariable(name: "condition", arg: 1, scope: !2542, file: !17, line: 800, type: !168)
!2552 = !DILocation(line: 800, column: 16, scope: !2542)
!2553 = !DILocation(line: 801, column: 2, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2542, file: !17, line: 800, column: 73)
!2555 = !DILocation(line: 814, column: 3, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !17, line: 801, column: 16)
!2557 = distinct !DILexicalBlock(scope: !2554, file: !17, line: 801, column: 2)
!2558 = !DILocation(line: 816, column: 1, scope: !2542)
!2559 = distinct !DISubprogram(name: "os.heap_allocator", linkageName: "os.heap_allocator", scope: !2505, file: !2505, line: 258, type: !2560, scopeLine: 258, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!26}
!2562 = !DILocalVariable(name: "context", scope: !2559, file: !2505, line: 258, type: !1405, align: 64)
!2563 = !DILocation(line: 258, column: 43, scope: !2559)
!2564 = !DILocation(line: 259, column: 2, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2559, file: !2505, line: 258, column: 43)
!2566 = distinct !DISubprogram(name: "mem.zero", linkageName: "mem.zero", scope: !2567, file: !2567, line: 15, type: !2568, scopeLine: 15, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2567 = !DIFile(filename: "mem.odin", directory: "/Users/tarvydas/tools/Odin/core/mem")
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!6, !6, !10}
!2570 = !DILocalVariable(name: "data", arg: 1, scope: !2566, file: !2567, line: 15, type: !6)
!2571 = !DILocation(line: 15, column: 29, scope: !2566)
!2572 = !DILocalVariable(name: "len", arg: 2, scope: !2566, file: !2567, line: 15, type: !10)
!2573 = !DILocation(line: 15, column: 43, scope: !2566)
!2574 = !DILocation(line: 15, column: 63, scope: !2566)
!2575 = !DILocation(line: 16, column: 2, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2566, file: !2567, line: 15, column: 63)
!2577 = !DILocation(line: 17, column: 2, scope: !2576)
!2578 = distinct !DISubprogram(name: "mem.byte_slice", linkageName: "mem.byte_slice", scope: !2567, file: !2567, line: 127, type: !2579, scopeLine: 127, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!37, !6, !10}
!2581 = !DILocalVariable(name: "data", arg: 1, scope: !2578, file: !2567, line: 127, type: !6)
!2582 = !DILocation(line: 127, column: 49, scope: !2578)
!2583 = !DILocalVariable(name: "len", arg: 2, scope: !2578, file: !2567, line: 127, type: !10)
!2584 = !DILocation(line: 127, column: 72, scope: !2578)
!2585 = !DILocation(line: 128, column: 2, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !2567, line: 127, column: 92)
!2587 = !DILocation(line: 127, column: 92, scope: !2578)
!2588 = distinct !DISubprogram(name: "__truncsfhf2", linkageName: "__truncsfhf2", scope: !1378, file: !1378, line: 728, type: !2589, scopeLine: 728, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!2591, !2593}
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", baseType: !2592, align: 16)
!2592 = !DIBasicType(name: "u16", size: 16, encoding: DW_ATE_unsigned)
!2593 = !DIDerivedType(tag: DW_TAG_typedef, name: "f32", baseType: !2594, align: 32)
!2594 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!2595 = !DILocalVariable(name: "value", arg: 1, scope: !2588, file: !1378, line: 728, type: !2593)
!2596 = !DILocation(line: 728, column: 25, scope: !2588)
!2597 = !DILocation(line: 729, column: 2, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2588, file: !1378, line: 728, column: 44)
!2599 = !DILocation(line: 730, column: 2, scope: !2598)
!2600 = !DILocation(line: 769, column: 4, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !1378, line: 768, column: 13)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !1378, line: 768, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !1378, line: 759, column: 9)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !1378, line: 751, column: 9)
!2605 = distinct !DILexicalBlock(scope: !2598, file: !1378, line: 740, column: 2)
!2606 = !DILocation(line: 770, column: 8, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2601, file: !1378, line: 770, column: 4)
!2608 = !DILocation(line: 772, column: 5, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2607, file: !1378, line: 770, column: 31)
!2610 = !DILocation(line: 728, column: 44, scope: !2588)
!2611 = !DILocalVariable(name: "v", scope: !2598, file: !1378, line: 729, type: !2612, align: 32)
!2612 = !DICompositeType(tag: DW_TAG_union_type, name: "struct #raw_union {i: u32, f: f32}", file: !1378, line: 729, size: 32, align: 32, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i", file: !1378, baseType: !357, size: 32, align: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "f", file: !1378, baseType: !2593, size: 32, align: 32)
!2616 = !DILocalVariable(name: "i", scope: !2598, file: !1378, line: 730, type: !65, align: 32)
!2617 = !DILocalVariable(name: "s", scope: !2598, file: !1378, line: 730, type: !65, align: 32)
!2618 = !DILocation(line: 730, column: 5, scope: !2598)
!2619 = !DILocalVariable(name: "e", scope: !2598, file: !1378, line: 730, type: !65, align: 32)
!2620 = !DILocation(line: 730, column: 8, scope: !2598)
!2621 = !DILocalVariable(name: "m", scope: !2598, file: !1378, line: 730, type: !65, align: 32)
!2622 = !DILocation(line: 730, column: 11, scope: !2598)
!2623 = !DILocation(line: 732, column: 6, scope: !2598)
!2624 = !DILocation(line: 733, column: 4, scope: !2598)
!2625 = !DILocation(line: 735, column: 4, scope: !2598)
!2626 = !DILocation(line: 736, column: 4, scope: !2598)
!2627 = !DILocation(line: 737, column: 4, scope: !2598)
!2628 = !DILocation(line: 740, column: 2, scope: !2598)
!2629 = !DILocation(line: 741, column: 3, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2605, file: !1378, line: 740, column: 12)
!2631 = !DILocation(line: 742, column: 4, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !1378, line: 741, column: 14)
!2633 = distinct !DILexicalBlock(scope: !2630, file: !1378, line: 741, column: 3)
!2634 = !DILocation(line: 744, column: 5, scope: !2630)
!2635 = !DILocation(line: 746, column: 3, scope: !2630)
!2636 = !DILocation(line: 747, column: 6, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !1378, line: 746, column: 26)
!2638 = distinct !DILexicalBlock(scope: !2630, file: !1378, line: 746, column: 3)
!2639 = !DILocation(line: 750, column: 3, scope: !2630)
!2640 = !DILocation(line: 751, column: 9, scope: !2604)
!2641 = !DILocation(line: 752, column: 3, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2604, file: !1378, line: 751, column: 35)
!2643 = !DILocation(line: 753, column: 4, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !1378, line: 752, column: 13)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !1378, line: 752, column: 3)
!2646 = !DILocation(line: 756, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !1378, line: 754, column: 10)
!2648 = !DILocation(line: 757, column: 4, scope: !2647)
!2649 = !DILocation(line: 760, column: 3, scope: !2603)
!2650 = !DILocation(line: 761, column: 6, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !1378, line: 760, column: 26)
!2652 = distinct !DILexicalBlock(scope: !2603, file: !1378, line: 760, column: 3)
!2653 = !DILocation(line: 762, column: 4, scope: !2651)
!2654 = !DILocation(line: 763, column: 7, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !1378, line: 762, column: 29)
!2656 = distinct !DILexicalBlock(scope: !2651, file: !1378, line: 762, column: 4)
!2657 = !DILocation(line: 764, column: 7, scope: !2655)
!2658 = !DILocation(line: 768, column: 3, scope: !2603)
!2659 = !DILocalVariable(name: "f", scope: !2601, file: !1378, line: 769, type: !469, align: 64)
!2660 = !DILocation(line: 770, column: 4, scope: !2607)
!2661 = !DILocalVariable(name: "j", scope: !2607, file: !1378, line: 770, type: !10, align: 64)
!2662 = !DILocation(line: 770, column: 16, scope: !2607)
!2663 = !DILocalVariable(name: "g", scope: !2609, file: !1378, line: 772, type: !469, align: 64)
!2664 = !DILocation(line: 773, column: 7, scope: !2609)
!2665 = !DILocation(line: 774, column: 5, scope: !2609)
!2666 = !DILocation(line: 775, column: 4, scope: !2607)
!2667 = !DILocation(line: 770, column: 26, scope: !2607)
!2668 = !DILocation(line: 777, column: 4, scope: !2601)
!2669 = !DILocation(line: 780, column: 3, scope: !2603)
!2670 = distinct !DISubprogram(name: "__truncdfhf2", linkageName: "__truncdfhf2", scope: !1378, file: !1378, line: 786, type: !2671, scopeLine: 786, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!2591, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "f64", baseType: !2674, align: 64)
!2674 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!2675 = !DILocalVariable(name: "value", arg: 1, scope: !2670, file: !1378, line: 786, type: !2673)
!2676 = !DILocation(line: 786, column: 25, scope: !2670)
!2677 = !DILocation(line: 786, column: 44, scope: !2670)
!2678 = !DILocation(line: 787, column: 2, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2670, file: !1378, line: 786, column: 44)
!2680 = distinct !DISubprogram(name: "__gnu_h2f_ieee", linkageName: "__gnu_h2f_ieee", scope: !1378, file: !1378, line: 791, type: !2681, scopeLine: 791, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!2593, !2591}
!2683 = !DILocalVariable(name: "value", arg: 1, scope: !2680, file: !1378, line: 791, type: !2591)
!2684 = !DILocation(line: 791, column: 27, scope: !2680)
!2685 = !DILocation(line: 794, column: 2, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2680, file: !1378, line: 791, column: 46)
!2687 = !DILocation(line: 795, column: 2, scope: !2686)
!2688 = !DILocation(line: 791, column: 46, scope: !2680)
!2689 = !DILocalVariable(name: "v", scope: !2686, file: !1378, line: 794, type: !2690, align: 32)
!2690 = !DICompositeType(tag: DW_TAG_union_type, name: "runtime.fp32", file: !1378, line: 792, size: 32, align: 32, elements: !2691)
!2691 = !{!2692, !2615}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "u", file: !1378, baseType: !357, size: 32, align: 32)
!2693 = !DILocalVariable(name: "magic", scope: !2686, file: !1378, line: 795, type: !2690, align: 32)
!2694 = !DILocalVariable(name: "inf_or_nan", scope: !2686, file: !1378, line: 795, type: !2690, align: 32)
!2695 = !DILocation(line: 795, column: 9, scope: !2686)
!2696 = !DILocation(line: 796, column: 10, scope: !2686)
!2697 = !DILocation(line: 797, column: 15, scope: !2686)
!2698 = !DILocation(line: 799, column: 6, scope: !2686)
!2699 = !DILocation(line: 800, column: 6, scope: !2686)
!2700 = !DILocation(line: 801, column: 2, scope: !2686)
!2701 = !DILocation(line: 802, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !1378, line: 801, column: 25)
!2703 = distinct !DILexicalBlock(scope: !2686, file: !1378, line: 801, column: 2)
!2704 = !DILocation(line: 804, column: 6, scope: !2686)
!2705 = !DILocation(line: 805, column: 2, scope: !2686)
!2706 = distinct !DISubprogram(name: "__gnu_f2h_ieee", linkageName: "__gnu_f2h_ieee", scope: !1378, file: !1378, line: 810, type: !2589, scopeLine: 810, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2707 = !DILocalVariable(name: "value", arg: 1, scope: !2706, file: !1378, line: 810, type: !2593)
!2708 = !DILocation(line: 810, column: 27, scope: !2706)
!2709 = !DILocation(line: 810, column: 46, scope: !2706)
!2710 = !DILocation(line: 811, column: 2, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2706, file: !1378, line: 810, column: 46)
!2712 = distinct !DISubprogram(name: "__extendhfsf2", linkageName: "__extendhfsf2", scope: !1378, file: !1378, line: 815, type: !2681, scopeLine: 815, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2713 = !DILocalVariable(name: "value", arg: 1, scope: !2712, file: !1378, line: 815, type: !2591)
!2714 = !DILocation(line: 815, column: 26, scope: !2712)
!2715 = !DILocation(line: 815, column: 45, scope: !2712)
!2716 = !DILocation(line: 816, column: 2, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !1378, line: 815, column: 45)
!2718 = distinct !DISubprogram(name: "__floattidf", linkageName: "__floattidf", scope: !1378, file: !1378, line: 822, type: !2719, scopeLine: 822, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!2673, !2072}
!2721 = !DILocalVariable(name: "a", arg: 1, scope: !2718, file: !1378, line: 822, type: !2072)
!2722 = !DILocation(line: 822, column: 24, scope: !2718)
!2723 = !DILocation(line: 830, column: 2, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2718, file: !1378, line: 822, column: 40)
!2725 = !DILocation(line: 832, column: 2, scope: !2724)
!2726 = !DILocation(line: 834, column: 2, scope: !2724)
!2727 = !DILocation(line: 835, column: 2, scope: !2724)
!2728 = !DILocation(line: 858, column: 2, scope: !2724)
!2729 = !DILocation(line: 822, column: 40, scope: !2718)
!2730 = !DILocation(line: 827, column: 2, scope: !2724)
!2731 = !DILocation(line: 828, column: 3, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !1378, line: 827, column: 12)
!2733 = distinct !DILexicalBlock(scope: !2724, file: !1378, line: 827, column: 2)
!2734 = !DILocalVariable(name: "a", scope: !2724, file: !1378, line: 830, type: !2072, align: 64)
!2735 = !DILocalVariable(name: "s", scope: !2724, file: !1378, line: 832, type: !2072, align: 64)
!2736 = !DILocation(line: 833, column: 4, scope: !2724)
!2737 = !DILocalVariable(name: "sd", scope: !2724, file: !1378, line: 834, type: !2072, align: 64)
!2738 = !DILocalVariable(name: "e", scope: !2724, file: !1378, line: 835, type: !65, align: 32)
!2739 = !DILocation(line: 836, column: 2, scope: !2724)
!2740 = !DILocation(line: 837, column: 3, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !1378, line: 836, column: 23)
!2742 = distinct !DILexicalBlock(scope: !2724, file: !1378, line: 836, column: 2)
!2743 = !DILocation(line: 839, column: 6, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2741, file: !1378, line: 837, column: 3)
!2745 = !DILocation(line: 843, column: 6, scope: !2744)
!2746 = !DILocation(line: 847, column: 5, scope: !2741)
!2747 = !DILocation(line: 848, column: 5, scope: !2741)
!2748 = !DILocation(line: 849, column: 5, scope: !2741)
!2749 = !DILocation(line: 851, column: 3, scope: !2741)
!2750 = !DILocation(line: 852, column: 6, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !1378, line: 851, column: 41)
!2752 = distinct !DILexicalBlock(scope: !2741, file: !1378, line: 851, column: 3)
!2753 = !DILocation(line: 853, column: 6, scope: !2751)
!2754 = !DILocation(line: 856, column: 5, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2742, file: !1378, line: 855, column: 9)
!2756 = !DILocalVariable(name: "fb", scope: !2724, file: !1378, line: 858, type: !2757, align: 32)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 64, align: 32, elements: !1943)
!2758 = !DILocation(line: 859, column: 8, scope: !2724)
!2759 = !DILocation(line: 862, column: 8, scope: !2724)
!2760 = !DILocation(line: 863, column: 2, scope: !2724)
!2761 = distinct !DISubprogram(name: "__floattidf_unsigned", linkageName: "__floattidf_unsigned", scope: !1378, file: !1378, line: 869, type: !2762, scopeLine: 869, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!2673, !1913}
!2764 = !DILocalVariable(name: "a", arg: 1, scope: !2761, file: !1378, line: 869, type: !1913)
!2765 = !DILocation(line: 869, column: 33, scope: !2761)
!2766 = !DILocation(line: 877, column: 2, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2761, file: !1378, line: 869, column: 49)
!2768 = !DILocation(line: 879, column: 2, scope: !2767)
!2769 = !DILocation(line: 880, column: 2, scope: !2767)
!2770 = !DILocation(line: 903, column: 2, scope: !2767)
!2771 = !DILocation(line: 869, column: 49, scope: !2761)
!2772 = !DILocation(line: 874, column: 2, scope: !2767)
!2773 = !DILocation(line: 875, column: 3, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !1378, line: 874, column: 12)
!2775 = distinct !DILexicalBlock(scope: !2767, file: !1378, line: 874, column: 2)
!2776 = !DILocalVariable(name: "a", scope: !2767, file: !1378, line: 877, type: !1913, align: 64)
!2777 = !DILocalVariable(name: "sd", scope: !2767, file: !1378, line: 879, type: !1913, align: 64)
!2778 = !DILocalVariable(name: "e", scope: !2767, file: !1378, line: 880, type: !65, align: 32)
!2779 = !DILocation(line: 881, column: 2, scope: !2767)
!2780 = !DILocation(line: 882, column: 3, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !1378, line: 881, column: 23)
!2782 = distinct !DILexicalBlock(scope: !2767, file: !1378, line: 881, column: 2)
!2783 = !DILocation(line: 884, column: 6, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !1378, line: 882, column: 3)
!2785 = !DILocation(line: 888, column: 6, scope: !2784)
!2786 = !DILocation(line: 892, column: 5, scope: !2781)
!2787 = !DILocation(line: 893, column: 5, scope: !2781)
!2788 = !DILocation(line: 894, column: 5, scope: !2781)
!2789 = !DILocation(line: 896, column: 3, scope: !2781)
!2790 = !DILocation(line: 897, column: 6, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !1378, line: 896, column: 35)
!2792 = distinct !DILexicalBlock(scope: !2781, file: !1378, line: 896, column: 3)
!2793 = !DILocation(line: 898, column: 6, scope: !2791)
!2794 = !DILocation(line: 901, column: 5, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2782, file: !1378, line: 900, column: 9)
!2796 = !DILocalVariable(name: "fb", scope: !2767, file: !1378, line: 903, type: !2757, align: 32)
!2797 = !DILocation(line: 904, column: 8, scope: !2767)
!2798 = !DILocation(line: 907, column: 8, scope: !2767)
!2799 = !DILocation(line: 908, column: 2, scope: !2767)
!2800 = distinct !DISubprogram(name: "__fixunsdfti", linkageName: "__fixunsdfti", scope: !1378, file: !1378, line: 915, type: !2801, scopeLine: 915, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!1913, !2673}
!2803 = !DILocalVariable(name: "a", arg: 1, scope: !2800, file: !1378, line: 915, type: !2673)
!2804 = !DILocation(line: 915, column: 42, scope: !2800)
!2805 = !DILocation(line: 917, column: 2, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2800, file: !1378, line: 915, column: 58)
!2807 = !DILocation(line: 915, column: 58, scope: !2800)
!2808 = !DILocalVariable(name: "x", scope: !2806, file: !1378, line: 917, type: !248, align: 64)
!2809 = !DILocation(line: 918, column: 2, scope: !2806)
!2810 = distinct !DISubprogram(name: "__fixunsdfdi", linkageName: "__fixunsdfdi", scope: !1378, file: !1378, line: 922, type: !2811, scopeLine: 922, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!2072, !2673}
!2813 = !DILocalVariable(name: "a", arg: 1, scope: !2810, file: !1378, line: 922, type: !2673)
!2814 = !DILocation(line: 922, column: 42, scope: !2810)
!2815 = !DILocation(line: 924, column: 2, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2810, file: !1378, line: 922, column: 58)
!2817 = !DILocation(line: 922, column: 58, scope: !2810)
!2818 = !DILocalVariable(name: "x", scope: !2816, file: !1378, line: 924, type: !469, align: 64)
!2819 = !DILocation(line: 925, column: 2, scope: !2816)
!2820 = distinct !DISubprogram(name: "__umodti3", linkageName: "__umodti3", scope: !1378, file: !1378, line: 932, type: !2821, scopeLine: 932, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!1913, !1913, !1913}
!2823 = !DILocalVariable(name: "a", arg: 1, scope: !2820, file: !1378, line: 932, type: !1913)
!2824 = !DILocation(line: 932, column: 22, scope: !2820)
!2825 = !DILocalVariable(name: "b", arg: 2, scope: !2820, file: !1378, line: 932, type: !1913)
!2826 = !DILocation(line: 932, column: 25, scope: !2820)
!2827 = !DILocation(line: 933, column: 2, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2820, file: !1378, line: 932, column: 42)
!2829 = !DILocation(line: 932, column: 42, scope: !2820)
!2830 = !DILocalVariable(name: "r", scope: !2828, file: !1378, line: 933, type: !1913, align: 64)
!2831 = !DILocation(line: 934, column: 4, scope: !2828)
!2832 = !DILocation(line: 935, column: 2, scope: !2828)
!2833 = distinct !DISubprogram(name: "__udivmodti4", linkageName: "__udivmodti4", scope: !1378, file: !1378, line: 940, type: !1911, scopeLine: 940, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2834 = !DILocalVariable(name: "a", arg: 1, scope: !2833, file: !1378, line: 940, type: !1913)
!2835 = !DILocation(line: 940, column: 25, scope: !2833)
!2836 = !DILocalVariable(name: "b", arg: 2, scope: !2833, file: !1378, line: 940, type: !1913)
!2837 = !DILocation(line: 940, column: 28, scope: !2833)
!2838 = !DILocalVariable(name: "rem", arg: 3, scope: !2833, file: !1378, line: 940, type: !1915)
!2839 = !DILocation(line: 940, column: 37, scope: !2833)
!2840 = !DILocation(line: 940, column: 57, scope: !2833)
!2841 = !DILocation(line: 941, column: 2, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2833, file: !1378, line: 940, column: 57)
!2843 = distinct !DISubprogram(name: "__udivti3", linkageName: "__udivti3", scope: !1378, file: !1378, line: 945, type: !2821, scopeLine: 945, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2844 = !DILocalVariable(name: "a", arg: 1, scope: !2843, file: !1378, line: 945, type: !1913)
!2845 = !DILocation(line: 945, column: 22, scope: !2843)
!2846 = !DILocalVariable(name: "b", arg: 2, scope: !2843, file: !1378, line: 945, type: !1913)
!2847 = !DILocation(line: 945, column: 25, scope: !2843)
!2848 = !DILocation(line: 945, column: 42, scope: !2843)
!2849 = !DILocation(line: 946, column: 2, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2843, file: !1378, line: 945, column: 42)
!2851 = distinct !DISubprogram(name: "__modti3", linkageName: "__modti3", scope: !1378, file: !1378, line: 951, type: !2852, scopeLine: 951, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!2072, !2072, !2072}
!2854 = !DILocalVariable(name: "a", arg: 1, scope: !2851, file: !1378, line: 951, type: !2072)
!2855 = !DILocation(line: 951, column: 21, scope: !2851)
!2856 = !DILocalVariable(name: "b", arg: 2, scope: !2851, file: !1378, line: 951, type: !2072)
!2857 = !DILocation(line: 951, column: 24, scope: !2851)
!2858 = !DILocation(line: 952, column: 2, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2851, file: !1378, line: 951, column: 41)
!2860 = !DILocation(line: 953, column: 2, scope: !2859)
!2861 = !DILocation(line: 954, column: 2, scope: !2859)
!2862 = !DILocation(line: 955, column: 2, scope: !2859)
!2863 = !DILocation(line: 957, column: 2, scope: !2859)
!2864 = !DILocation(line: 951, column: 41, scope: !2851)
!2865 = !DILocalVariable(name: "s_a", scope: !2859, file: !1378, line: 952, type: !2072, align: 64)
!2866 = !DILocalVariable(name: "s_b", scope: !2859, file: !1378, line: 953, type: !2072, align: 64)
!2867 = !DILocalVariable(name: "an", scope: !2859, file: !1378, line: 954, type: !2072, align: 64)
!2868 = !DILocalVariable(name: "bn", scope: !2859, file: !1378, line: 955, type: !2072, align: 64)
!2869 = !DILocalVariable(name: "r", scope: !2859, file: !1378, line: 957, type: !1913, align: 64)
!2870 = !DILocation(line: 958, column: 4, scope: !2859)
!2871 = !DILocation(line: 959, column: 2, scope: !2859)
!2872 = distinct !DISubprogram(name: "__divmodti4", linkageName: "__divmodti4", scope: !1378, file: !1378, line: 964, type: !2873, scopeLine: 964, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!2072, !2072, !2072, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64, align: 64, dwarfAddressSpace: 0)
!2876 = !DILocalVariable(name: "a", arg: 1, scope: !2872, file: !1378, line: 964, type: !2072)
!2877 = !DILocation(line: 964, column: 24, scope: !2872)
!2878 = !DILocalVariable(name: "b", arg: 2, scope: !2872, file: !1378, line: 964, type: !2072)
!2879 = !DILocation(line: 964, column: 27, scope: !2872)
!2880 = !DILocalVariable(name: "rem", arg: 3, scope: !2872, file: !1378, line: 964, type: !2875)
!2881 = !DILocation(line: 964, column: 36, scope: !2872)
!2882 = !DILocation(line: 965, column: 2, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2872, file: !1378, line: 964, column: 56)
!2884 = !DILocation(line: 964, column: 56, scope: !2872)
!2885 = !DILocalVariable(name: "u", scope: !2883, file: !1378, line: 965, type: !1913, align: 64)
!2886 = !DILocation(line: 966, column: 2, scope: !2883)
!2887 = distinct !DISubprogram(name: "__divti3", linkageName: "__divti3", scope: !1378, file: !1378, line: 970, type: !2852, scopeLine: 970, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2888 = !DILocalVariable(name: "a", arg: 1, scope: !2887, file: !1378, line: 970, type: !2072)
!2889 = !DILocation(line: 970, column: 21, scope: !2887)
!2890 = !DILocalVariable(name: "b", arg: 2, scope: !2887, file: !1378, line: 970, type: !2072)
!2891 = !DILocation(line: 970, column: 24, scope: !2887)
!2892 = !DILocation(line: 971, column: 2, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2887, file: !1378, line: 970, column: 41)
!2894 = !DILocation(line: 970, column: 41, scope: !2887)
!2895 = !DILocalVariable(name: "u", scope: !2893, file: !1378, line: 971, type: !1913, align: 64)
!2896 = !DILocation(line: 972, column: 2, scope: !2893)
!2897 = distinct !DISubprogram(name: "__fixdfti", linkageName: "__fixdfti", scope: !1378, file: !1378, line: 977, type: !2898, scopeLine: 977, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!2072, !248}
!2900 = !DILocalVariable(name: "a", arg: 1, scope: !2897, file: !1378, line: 977, type: !248)
!2901 = !DILocation(line: 977, column: 17, scope: !2897)
!2902 = !DILocalVariable(name: "context", scope: !2897, file: !1378, line: 977, type: !1405, align: 64)
!2903 = !DILocation(line: 977, column: 33, scope: !2897)
!2904 = !DILocation(line: 991, column: 2, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2897, file: !1378, line: 977, column: 33)
!2906 = !DILocation(line: 992, column: 2, scope: !2905)
!2907 = !DILocation(line: 993, column: 2, scope: !2905)
!2908 = !DILocation(line: 994, column: 2, scope: !2905)
!2909 = !DILocation(line: 995, column: 2, scope: !2905)
!2910 = !DILocalVariable(name: "aRep", scope: !2905, file: !1378, line: 991, type: !248, align: 64)
!2911 = !DILocalVariable(name: "aAbs", scope: !2905, file: !1378, line: 992, type: !248, align: 64)
!2912 = !DILocalVariable(name: "sign", scope: !2905, file: !1378, line: 993, type: !2072, align: 64)
!2913 = !DILocalVariable(name: "exponent", scope: !2905, file: !1378, line: 994, type: !248, align: 64)
!2914 = !DILocalVariable(name: "significand", scope: !2905, file: !1378, line: 995, type: !248, align: 64)
!2915 = !DILocation(line: 998, column: 2, scope: !2905)
!2916 = !DILocation(line: 999, column: 3, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !1378, line: 998, column: 18)
!2918 = distinct !DILexicalBlock(scope: !2905, file: !1378, line: 998, column: 2)
!2919 = !DILocation(line: 1003, column: 2, scope: !2905)
!2920 = !DILocation(line: 1004, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !1378, line: 1003, column: 35)
!2922 = distinct !DILexicalBlock(scope: !2905, file: !1378, line: 1003, column: 2)
!2923 = !DILocation(line: 1009, column: 2, scope: !2905)
!2924 = !DILocation(line: 1010, column: 3, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !1378, line: 1009, column: 32)
!2926 = distinct !DILexicalBlock(scope: !2905, file: !1378, line: 1009, column: 2)
!2927 = !DILocation(line: 1012, column: 3, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2926, file: !1378, line: 1011, column: 9)
!2929 = distinct !DISubprogram(name: "os.get_last_error", linkageName: "os.get_last_error", scope: !87, file: !87, line: 494, type: !2930, scopeLine: 494, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!10}
!2932 = !DILocation(line: 494, column: 48, scope: !2929)
!2933 = !DILocation(line: 495, column: 2, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !87, line: 494, column: 48)
!2935 = distinct !DISubprogram(name: "os.write", linkageName: "os.write", scope: !87, file: !87, line: 546, type: !2936, scopeLine: 546, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!2938, !88, !37}
!2938 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !2939)
!2939 = !{!1762, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_member, baseType: !344, size: 64, align: 64, offset: 64)
!2941 = !DILocalVariable(name: "fd", arg: 1, scope: !2935, file: !87, line: 546, type: !88)
!2942 = !DILocation(line: 546, column: 15, scope: !2935)
!2943 = !DILocalVariable(name: "data", arg: 2, scope: !2935, file: !87, line: 546, type: !37)
!2944 = !DILocation(line: 546, column: 27, scope: !2935)
!2945 = !DILocalVariable(name: "context", scope: !2935, file: !87, line: 546, type: !1405, align: 64)
!2946 = !DILocation(line: 546, column: 57, scope: !2935)
!2947 = !DILocation(line: 548, column: 3, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !87, line: 547, column: 20)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !87, line: 547, column: 2)
!2950 = distinct !DILexicalBlock(scope: !2935, file: !87, line: 546, column: 57)
!2951 = !DILocation(line: 551, column: 2, scope: !2950)
!2952 = !DILocation(line: 553, column: 3, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !87, line: 552, column: 23)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !87, line: 552, column: 2)
!2955 = !DILocation(line: 555, column: 2, scope: !2950)
!2956 = !DILocation(line: 547, column: 2, scope: !2950)
!2957 = !DILocalVariable(name: "bytes_written", scope: !2950, file: !87, line: 551, type: !10, align: 64)
!2958 = !DILocation(line: 552, column: 2, scope: !2950)
!2959 = distinct !DISubprogram(name: "os.heap_alloc", linkageName: "os.heap_alloc", scope: !87, file: !87, line: 834, type: !2960, scopeLine: 834, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!6, !10, !168}
!2962 = !DILocalVariable(name: "size", arg: 1, scope: !2959, file: !87, line: 834, type: !10)
!2963 = !DILocation(line: 834, column: 20, scope: !2959)
!2964 = !DILocalVariable(name: "context", scope: !2959, file: !87, line: 834, type: !1405, align: 64)
!2965 = !DILocation(line: 834, column: 62, scope: !2959)
!2966 = !DILocalVariable(name: "zero_memory", arg: 2, scope: !2959, file: !87, line: 834, type: !168)
!2967 = !DILocation(line: 834, column: 31, scope: !2959)
!2968 = !DILocation(line: 835, column: 2, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2959, file: !87, line: 834, column: 62)
!2970 = !DILocation(line: 836, column: 3, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !87, line: 835, column: 15)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !87, line: 835, column: 2)
!2973 = !DILocation(line: 838, column: 2, scope: !2969)
!2974 = !DILocation(line: 839, column: 3, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !87, line: 838, column: 17)
!2976 = distinct !DILexicalBlock(scope: !2969, file: !87, line: 838, column: 2)
!2977 = !DILocation(line: 841, column: 3, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2976, file: !87, line: 840, column: 9)
!2979 = distinct !DISubprogram(name: "os.heap_resize", linkageName: "os.heap_resize", scope: !87, file: !87, line: 844, type: !2568, scopeLine: 844, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2980 = !DILocalVariable(name: "ptr", arg: 1, scope: !2979, file: !87, line: 844, type: !6)
!2981 = !DILocation(line: 844, column: 21, scope: !2979)
!2982 = !DILocalVariable(name: "new_size", arg: 2, scope: !2979, file: !87, line: 844, type: !10)
!2983 = !DILocation(line: 844, column: 34, scope: !2979)
!2984 = !DILocalVariable(name: "context", scope: !2979, file: !87, line: 844, type: !1405, align: 64)
!2985 = !DILocation(line: 844, column: 59, scope: !2979)
!2986 = !DILocation(line: 847, column: 2, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2979, file: !87, line: 844, column: 59)
!2988 = distinct !DISubprogram(name: "os.heap_free", linkageName: "os.heap_free", scope: !87, file: !87, line: 849, type: !2215, scopeLine: 849, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2989 = !DILocalVariable(name: "ptr", arg: 1, scope: !2988, file: !87, line: 849, type: !6)
!2990 = !DILocation(line: 849, column: 19, scope: !2988)
!2991 = !DILocalVariable(name: "context", scope: !2988, file: !87, line: 849, type: !1405, align: 64)
!2992 = !DILocation(line: 849, column: 32, scope: !2988)
!2993 = !DILocation(line: 850, column: 2, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2988, file: !87, line: 849, column: 32)
!2995 = !DILocation(line: 851, column: 1, scope: !2988)
!2996 = distinct !DISubprogram(name: "runtime.default_allocator", linkageName: "runtime.default_allocator", scope: !2997, file: !2997, line: 17, type: !2560, scopeLine: 17, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!2997 = !DIFile(filename: "default_allocators_general.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!2998 = !DILocalVariable(name: "context", scope: !2996, file: !2997, line: 17, type: !1405, align: 64)
!2999 = !DILocation(line: 17, column: 43, scope: !2996)
!3000 = !DILocation(line: 18, column: 3, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2996, file: !2997, line: 17, column: 43)
!3002 = distinct !DISubprogram(name: "runtime.default_temp_allocator_destroy", linkageName: "runtime.default_temp_allocator_destroy", scope: !19, file: !19, line: 31, type: !3003, scopeLine: 31, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !3005}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64, dwarfAddressSpace: 0)
!3006 = !DILocalVariable(name: "s", arg: 1, scope: !3002, file: !19, line: 31, type: !3005)
!3007 = !DILocation(line: 31, column: 41, scope: !3002)
!3008 = !DILocalVariable(name: "context", scope: !3002, file: !19, line: 31, type: !1405, align: 64)
!3009 = !DILocation(line: 31, column: 69, scope: !3002)
!3010 = !DILocation(line: 32, column: 3, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 31, column: 69)
!3012 = !DILocation(line: 33, column: 4, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !19, line: 32, column: 15)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !19, line: 32, column: 3)
!3015 = !DILocation(line: 34, column: 7, scope: !3013)
!3016 = !DILocation(line: 36, column: 2, scope: !3002)
!3017 = distinct !DISubprogram(name: "runtime.default_temp_allocator_proc", linkageName: "runtime.default_temp_allocator_proc", scope: !19, file: !19, line: 38, type: !1677, scopeLine: 38, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3018 = !DILocalVariable(name: "allocator_data", arg: 1, scope: !3017, file: !19, line: 38, type: !6)
!3019 = !DILocation(line: 38, column: 38, scope: !3017)
!3020 = !DILocalVariable(name: "mode", arg: 2, scope: !3017, file: !19, line: 38, type: !48)
!3021 = !DILocation(line: 38, column: 62, scope: !3017)
!3022 = !DILocalVariable(name: "size", arg: 3, scope: !3017, file: !19, line: 39, type: !10)
!3023 = !DILocation(line: 39, column: 38, scope: !3017)
!3024 = !DILocalVariable(name: "alignment", arg: 4, scope: !3017, file: !19, line: 39, type: !10)
!3025 = !DILocation(line: 39, column: 44, scope: !3017)
!3026 = !DILocalVariable(name: "old_memory", arg: 5, scope: !3017, file: !19, line: 40, type: !6)
!3027 = !DILocation(line: 40, column: 38, scope: !3017)
!3028 = !DILocalVariable(name: "old_size", arg: 6, scope: !3017, file: !19, line: 40, type: !10)
!3029 = !DILocation(line: 40, column: 58, scope: !3017)
!3030 = !DILocalVariable(name: "loc", arg: 7, scope: !3017, file: !19, line: 40, type: !57)
!3031 = !DILocation(line: 40, column: 73, scope: !3017)
!3032 = !DILocalVariable(name: "context", scope: !3017, file: !19, line: 40, type: !1405, align: 64)
!3033 = !DILocation(line: 40, column: 138, scope: !3017)
!3034 = !DILocation(line: 42, column: 3, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3017, file: !19, line: 40, column: 138)
!3036 = !DILocation(line: 43, column: 3, scope: !3035)
!3037 = !DILocalVariable(name: "data", scope: !3017, file: !19, line: 40, type: !37, align: 64)
!3038 = !DILocation(line: 40, column: 102, scope: !3017)
!3039 = !DILocalVariable(name: "err", scope: !3017, file: !19, line: 40, type: !39, align: 8)
!3040 = !DILocation(line: 40, column: 116, scope: !3017)
!3041 = !DILocalVariable(name: "s", scope: !3035, file: !19, line: 42, type: !3005, align: 64)
!3042 = distinct !DISubprogram(name: "main", linkageName: "main", scope: !3043, file: !3043, line: 25, type: !3044, scopeLine: 25, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3043 = !DIFile(filename: "entry_unix.odin", directory: "/Users/tarvydas/tools/Odin/core/runtime")
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!65, !65, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64, align: 64, dwarfAddressSpace: 0)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "cstring", baseType: !3048, size: 64, align: 64, dwarfAddressSpace: 0)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "char", baseType: !3049, align: 8)
!3049 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned)
!3050 = !DILocalVariable(name: "argc", arg: 1, scope: !3042, file: !3043, line: 25, type: !65)
!3051 = !DILocation(line: 25, column: 20, scope: !3042)
!3052 = !DILocalVariable(name: "argv", arg: 2, scope: !3042, file: !3043, line: 25, type: !3046)
!3053 = !DILocation(line: 25, column: 31, scope: !3042)
!3054 = !DILocation(line: 26, column: 10, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3042, file: !3043, line: 25, column: 56)
!3056 = !DILocation(line: 27, column: 11, scope: !3055)
!3057 = !DILocation(line: 25, column: 56, scope: !3042)
!3058 = !DILocalVariable(name: "context", scope: !3055, file: !3043, line: 27, type: !1405, align: 64)
!3059 = !DILocation(line: 28, column: 20, scope: !3055)
!3060 = !DILocation(line: 29, column: 3, scope: !3055)
!3061 = !DILocation(line: 30, column: 20, scope: !3055)
!3062 = !DILocation(line: 31, column: 3, scope: !3055)
!3063 = distinct !DISubprogram(name: "runtime.copy_slice-10625", linkageName: "runtime.copy_slice-10625", scope: !17, file: !17, line: 36, type: !3064, scopeLine: 36, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!10, !37, !37}
!3066 = !DILocalVariable(name: "dst", arg: 1, scope: !3063, file: !17, line: 36, type: !37)
!3067 = !DILocation(line: 36, column: 35, scope: !3063)
!3068 = !DILocalVariable(name: "src", arg: 2, scope: !3063, file: !17, line: 36, type: !37)
!3069 = !DILocation(line: 36, column: 40, scope: !3063)
!3070 = !DILocation(line: 37, column: 2, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3063, file: !17, line: 36, column: 61)
!3072 = !DILocation(line: 36, column: 61, scope: !3063)
!3073 = !DILocalVariable(name: "n", scope: !3071, file: !17, line: 37, type: !10, align: 64)
!3074 = !DILocation(line: 38, column: 2, scope: !3071)
!3075 = !DILocation(line: 39, column: 3, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !17, line: 38, column: 11)
!3077 = distinct !DILexicalBlock(scope: !3071, file: !17, line: 38, column: 2)
!3078 = !DILocation(line: 41, column: 2, scope: !3071)
!3079 = distinct !DISubprogram(name: "runtime.copy_from_string-11468", linkageName: "runtime.copy_from_string-11468", scope: !17, file: !17, line: 49, type: !3080, scopeLine: 49, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!10, !37, !60}
!3082 = !DILocalVariable(name: "dst", arg: 1, scope: !3079, file: !17, line: 49, type: !37)
!3083 = !DILocation(line: 49, column: 41, scope: !3079)
!3084 = !DILocalVariable(name: "src", arg: 2, scope: !3079, file: !17, line: 49, type: !60)
!3085 = !DILocation(line: 49, column: 58, scope: !3079)
!3086 = !DILocation(line: 50, column: 2, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3079, file: !17, line: 49, column: 81)
!3088 = !DILocation(line: 49, column: 81, scope: !3079)
!3089 = !DILocalVariable(name: "n", scope: !3087, file: !17, line: 50, type: !10, align: 64)
!3090 = !DILocation(line: 51, column: 2, scope: !3087)
!3091 = !DILocation(line: 52, column: 3, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !17, line: 51, column: 11)
!3093 = distinct !DILexicalBlock(scope: !3087, file: !17, line: 51, column: 2)
!3094 = !DILocation(line: 54, column: 2, scope: !3087)
!3095 = distinct !DISubprogram(name: "runtime.make_slice-11548", linkageName: "runtime.make_slice-11548", scope: !17, file: !17, line: 281, type: !3096, scopeLine: 281, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!34, !10, !26, !57}
!3098 = !DILocalVariable(name: "len", arg: 1, scope: !3095, file: !17, line: 281, type: !10)
!3099 = !DILocation(line: 281, column: 46, scope: !3095)
!3100 = !DILocalVariable(name: "loc", arg: 3, scope: !3095, file: !17, line: 281, type: !57)
!3101 = !DILocation(line: 281, column: 88, scope: !3095)
!3102 = !DILocalVariable(name: "context", scope: !3095, file: !17, line: 281, type: !1405, align: 64)
!3103 = !DILocation(line: 281, column: 163, scope: !3095)
!3104 = !DILocation(line: 282, column: 2, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3095, file: !17, line: 281, column: 163)
!3106 = !DILocalVariable(name: "allocator", arg: 2, scope: !3095, file: !17, line: 281, type: !26)
!3107 = !DILocation(line: 281, column: 56, scope: !3095)
!3108 = distinct !DISubprogram(name: "runtime.make_aligned-11845", linkageName: "runtime.make_aligned-11845", scope: !17, file: !17, line: 266, type: !2086, scopeLine: 266, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3109 = !DILocalVariable(name: "len", arg: 1, scope: !3108, file: !17, line: 266, type: !10)
!3110 = !DILocation(line: 266, column: 48, scope: !3108)
!3111 = !DILocalVariable(name: "alignment", arg: 2, scope: !3108, file: !17, line: 266, type: !10)
!3112 = !DILocation(line: 266, column: 58, scope: !3108)
!3113 = !DILocalVariable(name: "loc", arg: 4, scope: !3108, file: !17, line: 266, type: !57)
!3114 = !DILocation(line: 266, column: 106, scope: !3108)
!3115 = !DILocalVariable(name: "context", scope: !3108, file: !17, line: 266, type: !1405, align: 64)
!3116 = !DILocation(line: 266, column: 181, scope: !3108)
!3117 = !DILocation(line: 268, column: 2, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3108, file: !17, line: 266, column: 181)
!3119 = !DILocation(line: 272, column: 2, scope: !3118)
!3120 = !DILocalVariable(name: "allocator", arg: 3, scope: !3108, file: !17, line: 266, type: !26)
!3121 = !DILocation(line: 266, column: 74, scope: !3108)
!3122 = !DILocation(line: 267, column: 2, scope: !3118)
!3123 = !DILocalVariable(name: "data", scope: !3118, file: !17, line: 268, type: !37, align: 64)
!3124 = !DILocalVariable(name: "err", scope: !3118, file: !17, line: 268, type: !39, align: 8)
!3125 = !DILocation(line: 268, column: 8, scope: !3118)
!3126 = !DILocation(line: 269, column: 2, scope: !3118)
!3127 = !DILocation(line: 270, column: 3, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !17, line: 269, column: 36)
!3129 = distinct !DILexicalBlock(scope: !3118, file: !17, line: 269, column: 2)
!3130 = !DILocalVariable(name: "s", scope: !3118, file: !17, line: 272, type: !3131, align: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "runtime.Raw_Slice", file: !2, line: 392, size: 128, align: 64, elements: !3132)
!3132 = !{!3133, !1394}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "data", file: !2, baseType: !6, size: 64, align: 64)
!3134 = !DILocation(line: 273, column: 2, scope: !3118)
!3135 = distinct !DISubprogram(name: "runtime.alloc_from_memory_block.calc_alignment_offset-0", linkageName: "runtime.alloc_from_memory_block.calc_alignment_offset-0", scope: !23, file: !23, line: 59, type: !3136, scopeLine: 59, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!78, !71, !1490}
!3138 = !DILocalVariable(name: "block", arg: 1, scope: !3135, file: !23, line: 59, type: !71)
!3139 = !DILocation(line: 59, column: 47, scope: !3135)
!3140 = !DILocalVariable(name: "alignment", arg: 2, scope: !3135, file: !23, line: 59, type: !1490)
!3141 = !DILocation(line: 59, column: 69, scope: !3135)
!3142 = !DILocation(line: 60, column: 3, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3135, file: !23, line: 59, column: 97)
!3144 = !DILocation(line: 61, column: 3, scope: !3143)
!3145 = !DILocation(line: 62, column: 3, scope: !3143)
!3146 = !DILocation(line: 59, column: 97, scope: !3135)
!3147 = !DILocalVariable(name: "alignment_offset", scope: !3143, file: !23, line: 60, type: !78, align: 64)
!3148 = !DILocalVariable(name: "ptr", scope: !3143, file: !23, line: 61, type: !1490, align: 64)
!3149 = !DILocalVariable(name: "mask", scope: !3143, file: !23, line: 62, type: !1490, align: 64)
!3150 = !DILocation(line: 63, column: 3, scope: !3143)
!3151 = !DILocation(line: 64, column: 21, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !23, line: 63, column: 22)
!3153 = distinct !DILexicalBlock(scope: !3143, file: !23, line: 63, column: 3)
!3154 = !DILocation(line: 66, column: 3, scope: !3143)
!3155 = distinct !DISubprogram(name: "runtime.arena_alloc.align_forward_uint-0", linkageName: "runtime.arena_alloc.align_forward_uint-0", scope: !23, file: !23, line: 90, type: !3156, scopeLine: 90, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!78, !78, !78}
!3158 = !DILocalVariable(name: "ptr", arg: 1, scope: !3155, file: !23, line: 90, type: !78)
!3159 = !DILocation(line: 90, column: 44, scope: !3155)
!3160 = !DILocalVariable(name: "align", arg: 2, scope: !3155, file: !23, line: 90, type: !78)
!3161 = !DILocation(line: 90, column: 49, scope: !3155)
!3162 = !DILocation(line: 91, column: 3, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3155, file: !23, line: 90, column: 70)
!3164 = !DILocation(line: 92, column: 3, scope: !3163)
!3165 = !DILocation(line: 90, column: 70, scope: !3155)
!3166 = !DILocalVariable(name: "p", scope: !3163, file: !23, line: 91, type: !78, align: 64)
!3167 = !DILocalVariable(name: "modulo", scope: !3163, file: !23, line: 92, type: !78, align: 64)
!3168 = !DILocation(line: 93, column: 3, scope: !3163)
!3169 = !DILocation(line: 94, column: 6, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !23, line: 93, column: 18)
!3171 = distinct !DILexicalBlock(scope: !3163, file: !23, line: 93, column: 3)
!3172 = !DILocation(line: 96, column: 3, scope: !3163)
!3173 = distinct !DISubprogram(name: "runtime.make_slice_error_loc.handle_error-0", linkageName: "runtime.make_slice_error_loc.handle_error-0", scope: !1751, file: !1751, line: 228, type: !1895, scopeLine: 228, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3174 = !DILocalVariable(name: "loc", arg: 1, scope: !3173, file: !1751, line: 228, type: !57)
!3175 = !DILocation(line: 228, column: 38, scope: !3173)
!3176 = !DILocalVariable(name: "len", arg: 2, scope: !3173, file: !1751, line: 228, type: !10)
!3177 = !DILocation(line: 228, column: 65, scope: !3173)
!3178 = !DILocation(line: 228, column: 75, scope: !3173)
!3179 = !DILocation(line: 229, column: 3, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3173, file: !1751, line: 228, column: 75)
!3181 = !DILocation(line: 230, column: 3, scope: !3180)
!3182 = !DILocation(line: 231, column: 3, scope: !3180)
!3183 = !DILocation(line: 232, column: 3, scope: !3180)
!3184 = !DILocation(line: 233, column: 3, scope: !3180)
!3185 = distinct !DISubprogram(name: "os.heap_allocator_proc.aligned_alloc-0", linkageName: "os.heap_allocator_proc.aligned_alloc-0", scope: !2505, file: !2505, line: 181, type: !3186, scopeLine: 181, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!34, !10, !10, !6, !168}
!3188 = !DILocalVariable(name: "size", arg: 1, scope: !3185, file: !2505, line: 181, type: !10)
!3189 = !DILocation(line: 181, column: 24, scope: !3185)
!3190 = !DILocalVariable(name: "alignment", arg: 2, scope: !3185, file: !2505, line: 181, type: !10)
!3191 = !DILocation(line: 181, column: 30, scope: !3185)
!3192 = !DILocalVariable(name: "old_ptr", arg: 3, scope: !3185, file: !2505, line: 181, type: !6)
!3193 = !DILocation(line: 181, column: 46, scope: !3185)
!3194 = !DILocalVariable(name: "context", scope: !3185, file: !2505, line: 181, type: !1405, align: 64)
!3195 = !DILocation(line: 181, column: 123, scope: !3185)
!3196 = !DILocation(line: 182, column: 3, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3185, file: !2505, line: 181, column: 123)
!3198 = !DILocation(line: 183, column: 3, scope: !3197)
!3199 = !DILocation(line: 185, column: 3, scope: !3197)
!3200 = !DILocation(line: 187, column: 4, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !2505, line: 186, column: 21)
!3202 = distinct !DILexicalBlock(scope: !3197, file: !2505, line: 186, column: 3)
!3203 = !DILocation(line: 192, column: 3, scope: !3197)
!3204 = !DILocation(line: 194, column: 3, scope: !3197)
!3205 = !DILocation(line: 195, column: 3, scope: !3197)
!3206 = !DILocation(line: 196, column: 3, scope: !3197)
!3207 = !DILocalVariable(name: "zero_memory", arg: 4, scope: !3185, file: !2505, line: 181, type: !168)
!3208 = !DILocation(line: 181, column: 69, scope: !3185)
!3209 = !DILocalVariable(name: "a", scope: !3197, file: !2505, line: 182, type: !10, align: 64)
!3210 = !DILocalVariable(name: "space", scope: !3197, file: !2505, line: 183, type: !10, align: 64)
!3211 = !DILocalVariable(name: "allocated_mem", scope: !3197, file: !2505, line: 185, type: !6, align: 64)
!3212 = !DILocation(line: 186, column: 3, scope: !3197)
!3213 = !DILocalVariable(name: "original_old_ptr", scope: !3201, file: !2505, line: 187, type: !6, align: 64)
!3214 = !DILocation(line: 188, column: 18, scope: !3201)
!3215 = !DILocation(line: 190, column: 18, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3202, file: !2505, line: 189, column: 10)
!3217 = !DILocalVariable(name: "aligned_mem", scope: !3197, file: !2505, line: 192, type: !6, align: 64)
!3218 = !DILocalVariable(name: "ptr", scope: !3197, file: !2505, line: 194, type: !1490, align: 64)
!3219 = !DILocalVariable(name: "aligned_ptr", scope: !3197, file: !2505, line: 195, type: !1490, align: 64)
!3220 = !DILocalVariable(name: "diff", scope: !3197, file: !2505, line: 196, type: !10, align: 64)
!3221 = !DILocation(line: 197, column: 3, scope: !3197)
!3222 = !DILocation(line: 198, column: 4, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !2505, line: 197, column: 52)
!3224 = distinct !DILexicalBlock(scope: !3197, file: !2505, line: 197, column: 3)
!3225 = !DILocation(line: 201, column: 15, scope: !3197)
!3226 = !DILocation(line: 202, column: 47, scope: !3197)
!3227 = !DILocation(line: 204, column: 3, scope: !3197)
!3228 = distinct !DISubprogram(name: "os.heap_allocator_proc.aligned_free-1", linkageName: "os.heap_allocator_proc.aligned_free-1", scope: !2505, file: !2505, line: 207, type: !2215, scopeLine: 207, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3229 = !DILocalVariable(name: "p", arg: 1, scope: !3228, file: !2505, line: 207, type: !6)
!3230 = !DILocation(line: 207, column: 23, scope: !3228)
!3231 = !DILocalVariable(name: "context", scope: !3228, file: !2505, line: 207, type: !1405, align: 64)
!3232 = !DILocation(line: 207, column: 34, scope: !3228)
!3233 = !DILocation(line: 208, column: 3, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3228, file: !2505, line: 207, column: 34)
!3235 = !DILocation(line: 209, column: 4, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !2505, line: 208, column: 15)
!3237 = distinct !DILexicalBlock(scope: !3234, file: !2505, line: 208, column: 3)
!3238 = !DILocation(line: 211, column: 2, scope: !3228)
!3239 = distinct !DISubprogram(name: "os.heap_allocator_proc.aligned_resize-2", linkageName: "os.heap_allocator_proc.aligned_resize-2", scope: !2505, file: !2505, line: 213, type: !3240, scopeLine: 213, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!3242, !6, !10, !10, !10}
!3242 = !DICompositeType(tag: DW_TAG_structure_type, size: 192, align: 64, elements: !3243)
!3243 = !{!3244, !1524}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "new_memory", baseType: !37, size: 128, align: 64)
!3245 = !DILocalVariable(name: "p", arg: 1, scope: !3239, file: !2505, line: 213, type: !6)
!3246 = !DILocation(line: 213, column: 25, scope: !3239)
!3247 = !DILocalVariable(name: "old_size", arg: 2, scope: !3239, file: !2505, line: 213, type: !10)
!3248 = !DILocation(line: 213, column: 36, scope: !3239)
!3249 = !DILocalVariable(name: "new_size", arg: 3, scope: !3239, file: !2505, line: 213, type: !10)
!3250 = !DILocation(line: 213, column: 51, scope: !3239)
!3251 = !DILocalVariable(name: "new_alignment", arg: 4, scope: !3239, file: !2505, line: 213, type: !10)
!3252 = !DILocation(line: 213, column: 66, scope: !3239)
!3253 = !DILocalVariable(name: "context", scope: !3239, file: !2505, line: 213, type: !1405, align: 64)
!3254 = !DILocation(line: 213, column: 136, scope: !3239)
!3255 = !DILocation(line: 218, column: 14, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3239, file: !2505, line: 213, column: 136)
!3257 = !DILocation(line: 222, column: 4, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !2505, line: 221, column: 26)
!3259 = distinct !DILexicalBlock(scope: !3256, file: !2505, line: 221, column: 3)
!3260 = !DILocalVariable(name: "new_memory", scope: !3239, file: !2505, line: 213, type: !37, align: 64)
!3261 = !DILocation(line: 213, column: 90, scope: !3239)
!3262 = !DILocalVariable(name: "err", scope: !3239, file: !2505, line: 213, type: !39, align: 8)
!3263 = !DILocation(line: 213, column: 110, scope: !3239)
!3264 = !DILocation(line: 214, column: 3, scope: !3256)
!3265 = !DILocation(line: 215, column: 4, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !2505, line: 214, column: 15)
!3267 = distinct !DILexicalBlock(scope: !3256, file: !2505, line: 214, column: 3)
!3268 = !DILocation(line: 221, column: 3, scope: !3256)
!3269 = !DILocalVariable(name: "new_region", scope: !3258, file: !2505, line: 222, type: !63, align: 64)
!3270 = !DILocation(line: 223, column: 4, scope: !3258)
!3271 = !DILocation(line: 225, column: 3, scope: !3256)
!3272 = distinct !DISubprogram(name: "runtime.assert.internal-0", linkageName: "runtime.assert.internal-0", scope: !17, file: !17, line: 807, type: !3273, scopeLine: 807, flags: DIFlagStaticMember, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !1381)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null, !60, !57}
!3275 = !DILocalVariable(name: "message", arg: 1, scope: !3272, file: !17, line: 807, type: !60)
!3276 = !DILocation(line: 807, column: 20, scope: !3272)
!3277 = !DILocalVariable(name: "loc", arg: 2, scope: !3272, file: !17, line: 807, type: !57)
!3278 = !DILocation(line: 807, column: 37, scope: !3272)
!3279 = !DILocalVariable(name: "context", scope: !3272, file: !17, line: 807, type: !1405, align: 64)
!3280 = !DILocation(line: 807, column: 64, scope: !3272)
!3281 = !DILocation(line: 808, column: 4, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3272, file: !17, line: 807, column: 64)
!3283 = !DILocalVariable(name: "p", scope: !3282, file: !17, line: 808, type: !1410, align: 64)
!3284 = !DILocation(line: 809, column: 4, scope: !3282)
!3285 = !DILocation(line: 810, column: 7, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !17, line: 809, column: 16)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !17, line: 809, column: 4)
!3288 = !DILocation(line: 812, column: 4, scope: !3282)
