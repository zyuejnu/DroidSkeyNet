.class public Lcom/zdworks/android/calendartable/util/ChineseCalendar;
.super Ljava/lang/Object;
.source "ChineseCalendar.java"


# static fields
.field public static final LUNAR_YEAR_OFFSET:I = 0xa89

.field public static final TAG:Ljava/lang/String; = "ChineseCalendar"

.field public static animalNames:[Ljava/lang/String;

.field private static baseChineseDate:I

.field private static baseChineseMonth:I

.field private static baseChineseYear:I

.field private static baseDate:I

.field private static baseIndex:I

.field private static baseMonth:I

.field private static baseYear:I

.field private static bigLeapMonthYears:[I

.field public static branchNames:[Ljava/lang/String;

.field private static chineseMonthNames:[Ljava/lang/String;

.field private static chineseMonths:[C

.field private static daysInGregorianMonth:[C

.field private static instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

.field private static monthNames:[Ljava/lang/String;

.field private static principleTermMap:[[C

.field private static principleTermNames:[Ljava/lang/String;

.field private static principleTermYear:[[C

.field private static sectionalTermMap:[[C

.field private static sectionalTermNames:[Ljava/lang/String;

.field private static sectionalTermYear:[[C

.field public static stemNames:[Ljava/lang/String;


# instance fields
.field public chineseDate:I

.field public chineseMonth:I

.field public chineseYear:I

.field public dayOfWeek:I

.field public dayOfYear:I

.field public gregorianDate:I

.field public gregorianMonth:I

.field public gregorianYear:I

.field public isGregorianLeap:Z

.field public principleTerm:I

.field public sectionalTerm:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x1

    const/16 v5, 0x1d

    const/16 v4, 0x8

    const/16 v3, 0x9

    .line 24
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInGregorianMonth:[C

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7532"

    aput-object v2, v0, v1

    const-string v1, "\u4e59"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "\u4e19"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u4e01"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u620a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5df1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5e9a"

    aput-object v2, v0, v1

    const-string v1, "\u8f9b"

    aput-object v1, v0, v7

    const-string v1, "\u58ec"

    aput-object v1, v0, v4

    const-string v1, "\u7678"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->stemNames:[Ljava/lang/String;

    .line 28
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5b50"

    aput-object v2, v0, v1

    const-string v1, "\u4e11"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "\u5bc5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u536f"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u8fb0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5df3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5348"

    aput-object v2, v0, v1

    const-string v1, "\u672a"

    aput-object v1, v0, v7

    const-string v1, "\u7533"

    aput-object v1, v0, v4

    const-string v1, "\u9149"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u620c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u4ea5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->branchNames:[Ljava/lang/String;

    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u9f20"

    aput-object v2, v0, v1

    const-string v1, "\u725b"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "\u864e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5154"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u9f99"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u86c7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u9a6c"

    aput-object v2, v0, v1

    const-string v1, "\u7f8a"

    aput-object v1, v0, v7

    const-string v1, "\u7334"

    aput-object v1, v0, v4

    const-string v1, "\u9e21"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u732a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->animalNames:[Ljava/lang/String;

    .line 122
    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonths:[C

    .line 164
    const/16 v0, 0x76d

    sput v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseYear:I

    .line 165
    sput v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseMonth:I

    .line 166
    sput v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseDate:I

    .line 167
    const/4 v0, 0x0

    sput v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseIndex:I

    .line 168
    const/16 v0, 0x11f5

    sput v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseYear:I

    .line 169
    const/16 v0, 0xb

    sput v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseMonth:I

    .line 170
    const/16 v0, 0xb

    sput v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseDate:I

    .line 216
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->bigLeapMonthYears:[I

    .line 273
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v5, [C

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [C

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [C

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x21

    new-array v2, v2, [C

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [C

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v1, v1, [C

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    new-array v1, v5, [C

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v5, [C

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v5, [C

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [C

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTermMap:[[C

    .line 298
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_10

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v3, [C

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [C

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [C

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    new-array v1, v3, [C

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    new-array v1, v3, [C

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v3, [C

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [C

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTermYear:[[C

    .line 311
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_1c

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v5, [C

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [C

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [C

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [C

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [C

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v5, [C

    fill-array-data v1, :array_22

    aput-object v1, v0, v7

    new-array v1, v5, [C

    fill-array-data v1, :array_23

    aput-object v1, v0, v4

    new-array v1, v5, [C

    fill-array-data v1, :array_24

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v5, [C

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [C

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTermMap:[[C

    .line 336
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v7, [C

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    new-array v1, v7, [C

    fill-array-data v1, :array_28

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [C

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [C

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [C

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [C

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    new-array v1, v4, [C

    fill-array-data v1, :array_2e

    aput-object v1, v0, v7

    new-array v1, v4, [C

    fill-array-data v1, :array_2f

    aput-object v1, v0, v4

    new-array v1, v4, [C

    fill-array-data v1, :array_30

    aput-object v1, v0, v3

    const/16 v1, 0xa

    new-array v2, v4, [C

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [C

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTermYear:[[C

    .line 450
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e00"

    aput-object v2, v0, v1

    const-string v1, "\u4e8c"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const-string v1, "\u516b"

    aput-object v1, v0, v7

    const-string v1, "\u4e5d"

    aput-object v1, v0, v4

    const-string v1, "\u5341"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->monthNames:[Ljava/lang/String;

    .line 498
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6b63\u6708"

    aput-object v2, v0, v1

    const-string v1, "\u4e8c\u6708"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "\u4e09\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u56db\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4e94\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d\u6708"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03\u6708"

    aput-object v2, v0, v1

    const-string v1, "\u516b\u6708"

    aput-object v1, v0, v7

    const-string v1, "\u4e5d\u6708"

    aput-object v1, v0, v4

    const-string v1, "\u5341\u6708"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u51ac\u6708"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u814a\u6708"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    .line 500
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5927\u5bd2"

    aput-object v2, v0, v1

    const-string v1, "\u96e8\u6c34"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "\u6625\u5206"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8c37\u96e8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u590f\u6ee1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u590f\u81f3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u6691"

    aput-object v2, v0, v1

    const-string v1, "\u5904\u6691"

    aput-object v1, v0, v7

    const-string v1, "\u79cb\u5206"

    aput-object v1, v0, v4

    const-string v1, "\u971c\u964d"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u5c0f\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u51ac\u81f3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    .line 502
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5c0f\u5bd2"

    aput-object v2, v0, v1

    const-string v1, "\u7acb\u6625"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "\u60ca\u86f0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6e05\u660e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u7acb\u590f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8292\u79cd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5c0f\u6691"

    aput-object v2, v0, v1

    const-string v1, "\u7acb\u79cb"

    aput-object v1, v0, v7

    const-string v1, "\u767d\u9732"

    aput-object v1, v0, v4

    const-string v1, "\u5bd2\u9732"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "\u7acb\u51ac"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5927\u96ea"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    .line 573
    new-instance v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    return-void

    .line 24
    :array_0
    .array-data 0x2
        0x1ft 0x0t
        0x1ct 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x1et 0x0t
        0x1ft 0x0t
    .end array-data

    .line 122
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x4t 0x0t
        0xadt 0x0t
        0x8t 0x0t
        0x5at 0x0t
        0x1t 0x0t
        0xd5t 0x0t
        0x54t 0x0t
        0xb4t 0x0t
        0x9t 0x0t
        0x64t 0x0t
        0x5t 0x0t
        0x59t 0x0t
        0x45t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0xa6t 0x0t
        0x4t 0x0t
        0x55t 0x0t
        0x24t 0x0t
        0xadt 0x0t
        0x8t 0x0t
        0x5at 0x0t
        0x62t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0xb4t 0x0t
        0x5t 0x0t
        0xb4t 0x0t
        0x55t 0x0t
        0x52t 0x0t
        0xdt 0x0t
        0x94t 0x0t
        0xat 0x0t
        0x4at 0x0t
        0x2at 0x0t
        0x56t 0x0t
        0x2t 0x0t
        0x6dt 0x0t
        0x71t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0xdat 0x0t
        0x2t 0x0t
        0xd2t 0x0t
        0x52t 0x0t
        0xa9t 0x0t
        0x5t 0x0t
        0x49t 0x0t
        0xdt 0x0t
        0x2at 0x0t
        0x45t 0x0t
        0x2bt 0x0t
        0x9t 0x0t
        0x56t 0x0t
        0x1t 0x0t
        0xb5t 0x0t
        0x20t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0x59t 0x0t
        0x69t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xa8t 0x0t
        0x5t 0x0t
        0xa9t 0x0t
        0x56t 0x0t
        0xa5t 0x0t
        0x4t 0x0t
        0x2bt 0x0t
        0x9t 0x0t
        0x9et 0x0t
        0x38t 0x0t
        0xb6t 0x0t
        0x8t 0x0t
        0xect 0x0t
        0x74t 0x0t
        0x6ct 0x0t
        0x5t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xe4t 0x0t
        0x6at 0x0t
        0x52t 0x0t
        0x5t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x5at 0x0t
        0x42t 0x0t
        0x5bt 0x0t
        0x4t 0x0t
        0xb6t 0x0t
        0x4t 0x0t
        0xb4t 0x0t
        0x22t 0x0t
        0x6at 0x0t
        0x5t 0x0t
        0x52t 0x0t
        0x75t 0x0t
        0xc9t 0x0t
        0xat 0x0t
        0x52t 0x0t
        0x5t 0x0t
        0x35t 0x0t
        0x55t 0x0t
        0x4dt 0x0t
        0xat 0x0t
        0x5at 0x0t
        0x2t 0x0t
        0x5dt 0x0t
        0x31t 0x0t
        0xb5t 0x0t
        0x2t 0x0t
        0x6at 0x0t
        0x8at 0x0t
        0x68t 0x0t
        0x5t 0x0t
        0xa9t 0x0t
        0xat 0x0t
        0x8at 0x0t
        0x6at 0x0t
        0x2at 0x0t
        0x5t 0x0t
        0x2dt 0x0t
        0x9t 0x0t
        0xaat 0x0t
        0x48t 0x0t
        0x5at 0x0t
        0x1t 0x0t
        0xb5t 0x0t
        0x9t 0x0t
        0xb0t 0x0t
        0x39t 0x0t
        0x64t 0x0t
        0x5t 0x0t
        0x25t 0x0t
        0x75t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x96t 0x0t
        0x4t 0x0t
        0x4dt 0x0t
        0x54t 0x0t
        0xadt 0x0t
        0x4t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0xd4t 0x0t
        0x44t 0x0t
        0xb4t 0x0t
        0x5t 0x0t
        0x54t 0x0t
        0x85t 0x0t
        0x52t 0x0t
        0xdt 0x0t
        0x92t 0x0t
        0xat 0x0t
        0x56t 0x0t
        0x6at 0x0t
        0x56t 0x0t
        0x2t 0x0t
        0x6dt 0x0t
        0x2t 0x0t
        0x6at 0x0t
        0x41t 0x0t
        0xdat 0x0t
        0x2t 0x0t
        0xb2t 0x0t
        0xa1t 0x0t
        0xa9t 0x0t
        0x5t 0x0t
        0x49t 0x0t
        0xdt 0x0t
        0xat 0x0t
        0x6dt 0x0t
        0x2at 0x0t
        0x9t 0x0t
        0x56t 0x0t
        0x1t 0x0t
        0xadt 0x0t
        0x50t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0xd9t 0x0t
        0x2t 0x0t
        0xd1t 0x0t
        0x3at 0x0t
        0xa8t 0x0t
        0x5t 0x0t
        0x29t 0x0t
        0x85t 0x0t
        0xa5t 0x0t
        0xct 0x0t
        0x2at 0x0t
        0x9t 0x0t
        0x96t 0x0t
        0x54t 0x0t
        0xb6t 0x0t
        0x8t 0x0t
        0x6ct 0x0t
        0x9t 0x0t
        0x64t 0x0t
        0x45t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xa4t 0x0t
        0x5t 0x0t
        0x51t 0x0t
        0x25t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x2at 0x0t
        0x72t 0x0t
        0x5bt 0x0t
        0x4t 0x0t
        0xb6t 0x0t
        0x4t 0x0t
        0xact 0x0t
        0x52t 0x0t
        0x6at 0x0t
        0x5t 0x0t
        0xd2t 0x0t
        0xat 0x0t
        0xa2t 0x0t
        0x4at 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x55t 0x0t
        0x94t 0x0t
        0x2dt 0x0t
        0xat 0x0t
        0x5at 0x0t
        0x2t 0x0t
        0x75t 0x0t
        0x61t 0x0t
        0xb5t 0x0t
        0x2t 0x0t
        0x6at 0x0t
        0x3t 0x0t
        0x61t 0x0t
        0x45t 0x0t
        0xa9t 0x0t
        0xat 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x25t 0x0t
        0x25t 0x0t
        0x2dt 0x0t
        0x9t 0x0t
        0x9at 0x0t
        0x68t 0x0t
        0xdat 0x0t
        0x8t 0x0t
        0xb4t 0x0t
        0x9t 0x0t
        0xa8t 0x0t
        0x59t 0x0t
        0x54t 0x0t
        0x3t 0x0t
        0xa5t 0x0t
        0xat 0x0t
        0x91t 0x0t
        0x3at 0x0t
        0x96t 0x0t
        0x4t 0x0t
        0xadt 0x0t
        0xb0t 0x0t
        0xadt 0x0t
        0x4t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0xf4t 0x0t
        0x62t 0x0t
        0xb4t 0x0t
        0x5t 0x0t
        0x54t 0x0t
        0xbt 0x0t
        0x44t 0x0t
        0x5dt 0x0t
        0x52t 0x0t
        0xat 0x0t
        0x95t 0x0t
        0x4t 0x0t
        0x55t 0x0t
        0x22t 0x0t
        0x6dt 0x0t
        0x2t 0x0t
        0x5at 0x0t
        0x71t 0x0t
        0xdat 0x0t
        0x2t 0x0t
        0xaat 0x0t
        0x5t 0x0t
        0xb2t 0x0t
        0x55t 0x0t
        0x49t 0x0t
        0xbt 0x0t
        0x4at 0x0t
        0xat 0x0t
        0x2dt 0x0t
        0x39t 0x0t
        0x36t 0x0t
        0x1t 0x0t
        0x6dt 0x0t
        0x80t 0x0t
        0x6dt 0x0t
        0x1t 0x0t
        0xd9t 0x0t
        0x2t 0x0t
        0xe9t 0x0t
        0x6at 0x0t
        0xa8t 0x0t
        0x5t 0x0t
        0x29t 0x0t
        0xbt 0x0t
        0x9at 0x0t
        0x4ct 0x0t
        0xaat 0x0t
        0x8t 0x0t
        0xb6t 0x0t
        0x8t 0x0t
        0xb4t 0x0t
        0x38t 0x0t
        0x6ct 0x0t
        0x9t 0x0t
        0x54t 0x0t
        0x75t 0x0t
        0xd4t 0x0t
        0xat 0x0t
        0xa4t 0x0t
        0x5t 0x0t
        0x45t 0x0t
        0x55t 0x0t
        0x95t 0x0t
        0xat 0x0t
        0x9at 0x0t
        0x4t 0x0t
        0x55t 0x0t
        0x44t 0x0t
        0xb5t 0x0t
        0x4t 0x0t
        0x6at 0x0t
        0x82t 0x0t
        0x6at 0x0t
        0x5t 0x0t
        0xd2t 0x0t
        0xat 0x0t
        0x92t 0x0t
        0x6at 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x55t 0x0t
        0xat 0x0t
        0x2at 0x0t
        0x4at 0x0t
        0x5at 0x0t
        0x2t 0x0t
        0xb5t 0x0t
        0x2t 0x0t
        0xb2t 0x0t
        0x31t 0x0t
        0x69t 0x0t
        0x3t 0x0t
        0x31t 0x0t
        0x73t 0x0t
        0xa9t 0x0t
        0xat 0x0t
        0x4at 0x0t
        0x5t 0x0t
        0x2dt 0x0t
        0x55t 0x0t
        0x2dt 0x0t
        0x9t 0x0t
        0x5at 0x0t
        0x1t 0x0t
        0xd5t 0x0t
        0x48t 0x0t
        0xb4t 0x0t
        0x9t 0x0t
        0x68t 0x0t
        0x89t 0x0t
        0x54t 0x0t
        0xbt 0x0t
        0xa4t 0x0t
        0xat 0x0t
        0xa5t 0x0t
        0x6at 0x0t
        0x95t 0x0t
        0x4t 0x0t
        0xadt 0x0t
        0x8t 0x0t
        0x6at 0x0t
        0x44t 0x0t
        0xdat 0x0t
        0x4t 0x0t
        0x74t 0x0t
        0x5t 0x0t
        0xb0t 0x0t
        0x25t 0x0t
        0x54t 0x0t
        0x3t 0x0t
    .end array-data

    .line 216
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
    .end array-data

    .line 273
    :array_3
    .array-data 0x2
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
    .end array-data

    :array_5
    .array-data 0x2
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    nop

    :array_6
    .array-data 0x2
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x2
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    nop

    :array_8
    .array-data 0x2
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    nop

    :array_9
    .array-data 0x2
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    nop

    :array_a
    .array-data 0x2
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    nop

    :array_b
    .array-data 0x2
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    nop

    :array_c
    .array-data 0x2
        0x9t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
    .end array-data

    nop

    :array_d
    .array-data 0x2
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    nop

    :array_e
    .array-data 0x2
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    .line 298
    nop

    :array_f
    .array-data 0x2
        0xdt 0x0t
        0x31t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x95t 0x0t
        0xb9t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_10
    .array-data 0x2
        0xdt 0x0t
        0x2dt 0x0t
        0x51t 0x0t
        0x75t 0x0t
        0x95t 0x0t
        0xb9t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_11
    .array-data 0x2
        0xdt 0x0t
        0x30t 0x0t
        0x54t 0x0t
        0x70t 0x0t
        0x94t 0x0t
        0xb8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_12
    .array-data 0x2
        0xdt 0x0t
        0x2dt 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x8ct 0x0t
        0xact 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_13
    .array-data 0x2
        0xdt 0x0t
        0x2ct 0x0t
        0x48t 0x0t
        0x68t 0x0t
        0x84t 0x0t
        0xa8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_14
    .array-data 0x2
        0x5t 0x0t
        0x21t 0x0t
        0x44t 0x0t
        0x60t 0x0t
        0x7ct 0x0t
        0x98t 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    nop

    :array_15
    .array-data 0x2
        0x1dt 0x0t
        0x39t 0x0t
        0x55t 0x0t
        0x78t 0x0t
        0x94t 0x0t
        0xb0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_16
    .array-data 0x2
        0xdt 0x0t
        0x30t 0x0t
        0x4ct 0x0t
        0x68t 0x0t
        0x84t 0x0t
        0xa8t 0x0t
        0xc4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    nop

    :array_17
    .array-data 0x2
        0x19t 0x0t
        0x3ct 0x0t
        0x58t 0x0t
        0x78t 0x0t
        0x94t 0x0t
        0xb8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_18
    .array-data 0x2
        0x10t 0x0t
        0x2ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x90t 0x0t
        0xact 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_19
    .array-data 0x2
        0x1ct 0x0t
        0x3ct 0x0t
        0x5ct 0x0t
        0x7ct 0x0t
        0xa0t 0x0t
        0xc0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    nop

    :array_1a
    .array-data 0x2
        0x11t 0x0t
        0x35t 0x0t
        0x55t 0x0t
        0x7ct 0x0t
        0x9ct 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 311
    nop

    :array_1b
    .array-data 0x2
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
    .end array-data

    :array_1c
    .array-data 0x2
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
    .end array-data

    :array_1d
    .array-data 0x2
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
    .end array-data

    nop

    :array_1e
    .array-data 0x2
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
    .end array-data

    nop

    :array_1f
    .array-data 0x2
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
    .end array-data

    nop

    :array_20
    .array-data 0x2
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
    .end array-data

    nop

    :array_21
    .array-data 0x2
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
    .end array-data

    nop

    :array_22
    .array-data 0x2
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
    .end array-data

    nop

    :array_23
    .array-data 0x2
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
    .end array-data

    nop

    :array_24
    .array-data 0x2
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
    .end array-data

    nop

    :array_25
    .array-data 0x2
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
    .end array-data

    nop

    :array_26
    .array-data 0x2
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
    .end array-data

    .line 336
    nop

    :array_27
    .array-data 0x2
        0xdt 0x0t
        0x2dt 0x0t
        0x51t 0x0t
        0x71t 0x0t
        0x95t 0x0t
        0xb9t 0x0t
        0xc9t 0x0t
    .end array-data

    nop

    :array_28
    .array-data 0x2
        0x15t 0x0t
        0x39t 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0xa1t 0x0t
        0xc1t 0x0t
        0xc9t 0x0t
    .end array-data

    nop

    :array_29
    .array-data 0x2
        0x15t 0x0t
        0x38t 0x0t
        0x58t 0x0t
        0x78t 0x0t
        0x98t 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_2a
    .array-data 0x2
        0x15t 0x0t
        0x31t 0x0t
        0x51t 0x0t
        0x74t 0x0t
        0x90t 0x0t
        0xb0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_2b
    .array-data 0x2
        0x11t 0x0t
        0x31t 0x0t
        0x4dt 0x0t
        0x70t 0x0t
        0x8ct 0x0t
        0xa8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_2c
    .array-data 0x2
        0x1ct 0x0t
        0x3ct 0x0t
        0x58t 0x0t
        0x74t 0x0t
        0x94t 0x0t
        0xb4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_2d
    .array-data 0x2
        0x19t 0x0t
        0x35t 0x0t
        0x54t 0x0t
        0x70t 0x0t
        0x90t 0x0t
        0xact 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_2e
    .array-data 0x2
        0x1dt 0x0t
        0x39t 0x0t
        0x59t 0x0t
        0x78t 0x0t
        0x94t 0x0t
        0xb4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_2f
    .array-data 0x2
        0x11t 0x0t
        0x2dt 0x0t
        0x49t 0x0t
        0x6ct 0x0t
        0x8ct 0x0t
        0xa8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_30
    .array-data 0x2
        0x1ct 0x0t
        0x3ct 0x0t
        0x5ct 0x0t
        0x7ct 0x0t
        0xa0t 0x0t
        0xc0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_31
    .array-data 0x2
        0x10t 0x0t
        0x2ct 0x0t
        0x50t 0x0t
        0x70t 0x0t
        0x94t 0x0t
        0xb4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    :array_32
    .array-data 0x2
        0x11t 0x0t
        0x35t 0x0t
        0x58t 0x0t
        0x78t 0x0t
        0x9ct 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x76d

    invoke-virtual {p0, v0, v1, v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 65
    return-void
.end method

.method public static dayOfWeek(III)I
    .locals 4
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 109
    const/4 v2, 0x1

    .line 110
    .local v2, w:I
    add-int/lit8 v3, p0, -0x1

    rem-int/lit16 v3, v3, 0x190

    add-int/lit8 p0, v3, 0x1

    .line 111
    add-int/lit8 v3, p0, -0x1

    div-int/lit8 v0, v3, 0x4

    .line 112
    .local v0, ly:I
    add-int/lit8 v3, p0, -0x1

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v0, v3

    .line 113
    add-int/lit8 v3, p0, -0x1

    div-int/lit16 v3, v3, 0x190

    add-int/2addr v0, v3

    .line 114
    add-int/lit8 v3, p0, -0x1

    sub-int v1, v3, v0

    .line 115
    .local v1, ry:I
    add-int/2addr v2, v1

    .line 116
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    .line 117
    invoke-static {p0, p1, p2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfYear(III)I

    move-result v3

    add-int/2addr v2, v3

    .line 118
    add-int/lit8 v3, v2, -0x1

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v3, 0x1

    .line 119
    return v2
.end method

.method public static dayOfYear(III)I
    .locals 3
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, c:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 102
    invoke-static {p0, v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    add-int/2addr v0, p2

    .line 105
    return v0
.end method

.method public static daysInChineseMonth(II)I
    .locals 8
    .parameter "y"
    .parameter "m"

    .prologue
    const/4 v7, 0x1

    .line 223
    sget v5, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseYear:I

    sub-int v5, p0, v5

    sget v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseIndex:I

    add-int v2, v5, v6

    .line 228
    .local v2, index:I
    const/4 v4, 0x0

    .line 229
    .local v4, v:I
    const/4 v3, 0x0

    .line 230
    .local v3, l:I
    const/16 v0, 0x1e

    .line 231
    .local v0, d:I
    if-gt v7, p1, :cond_1

    const/16 v5, 0x8

    if-gt p1, v5, :cond_1

    .line 232
    sget-object v5, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    aget-char v4, v5, v6

    .line 233
    add-int/lit8 v3, p1, -0x1

    .line 234
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 235
    const/16 v0, 0x1d

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const/16 v5, 0x9

    if-gt v5, p1, :cond_2

    const/16 v5, 0xc

    if-gt p1, v5, :cond_2

    .line 237
    sget-object v5, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 238
    add-int/lit8 v3, p1, -0x9

    .line 239
    shr-int v5, v4, v3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    .line 240
    const/16 v0, 0x1d

    goto :goto_0

    .line 242
    :cond_2
    sget-object v5, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v4, v5, v6

    .line 243
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 244
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 245
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_3
    const/16 v0, 0x1d

    .line 248
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->bigLeapMonthYears:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 249
    sget-object v5, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->bigLeapMonthYears:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_4

    .line 250
    const/16 v0, 0x1e

    .line 251
    goto :goto_0

    .line 248
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static daysInGregorianMonth(II)I
    .locals 3
    .parameter "y"
    .parameter "m"

    .prologue
    .line 93
    sget-object v1, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInGregorianMonth:[C

    add-int/lit8 v2, p1, -0x1

    aget-char v0, v1, v2

    .line 94
    .local v0, d:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 96
    :cond_0
    return v0
.end method

.method public static getChineseMonthName(I)Ljava/lang/String;
    .locals 2
    .parameter "month"

    .prologue
    .line 542
    sget-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getPrincipleTerm(I)Ljava/lang/String;
    .locals 2
    .parameter "month"

    .prologue
    .line 538
    sget-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getSectionalTerm(I)Ljava/lang/String;
    .locals 2
    .parameter "month"

    .prologue
    .line 534
    sget-object v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getTextLine(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "t"

    .prologue
    .line 443
    const-string v0, "                                                                                    "

    .line 445
    .local v0, str:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_0
    return-object v0
.end method

.method public static isGregorianLeapYear(I)Z
    .locals 2
    .parameter "year"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, isLeap:Z
    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 85
    :cond_0
    rem-int/lit8 v1, p0, 0x64

    if-nez v1, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 87
    :cond_1
    rem-int/lit16 v1, p0, 0x190

    if-nez v1, :cond_2

    .line 88
    const/4 v0, 0x1

    .line 89
    :cond_2
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .parameter "arg"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 34
    new-instance v0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-direct {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;-><init>()V

    .line 35
    .local v0, c:Lcom/zdworks/android/calendartable/util/ChineseCalendar;
    const-string v1, "day"

    .line 36
    .local v1, cmd:Ljava/lang/String;
    const/16 v6, 0x76d

    .line 37
    .local v6, y:I
    const/4 v4, 0x1

    .line 38
    .local v4, m:I
    const/4 v2, 0x1

    .line 39
    .local v2, d:I
    array-length v7, p0

    if-lez v7, :cond_0

    .line 40
    const/4 v7, 0x0

    aget-object v1, p0, v7

    .line 41
    :cond_0
    array-length v7, p0

    if-le v7, v8, :cond_1

    .line 42
    aget-object v7, p0, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 43
    :cond_1
    array-length v7, p0

    if-le v7, v9, :cond_2

    .line 44
    aget-object v7, p0, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 45
    :cond_2
    array-length v7, p0

    if-le v7, v10, :cond_3

    .line 46
    aget-object v7, p0, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 47
    :cond_3
    invoke-virtual {v0, v6, v4, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 48
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeChineseFields()I

    .line 49
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeSolarTerms()I

    .line 50
    const-string v7, "year"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 51
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getYearTable()[Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, t:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_6

    .line 53
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v3           #i:I
    .end local v5           #t:[Ljava/lang/String;
    :cond_4
    const-string v7, "month"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 55
    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getMonthTable()[Ljava/lang/String;

    move-result-object v5

    .line 56
    .restart local v5       #t:[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_6

    .line 57
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    .end local v3           #i:I
    .end local v5           #t:[Ljava/lang/String;
    :cond_5
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :cond_6
    return-void
.end method

.method public static nextChineseMonth(II)I
    .locals 5
    .parameter "y"
    .parameter "m"

    .prologue
    .line 260
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 261
    .local v1, n:I
    if-lez p1, :cond_0

    .line 262
    sget v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseYear:I

    sub-int v3, p0, v3

    sget v4, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseIndex:I

    add-int v0, v3, v4

    .line 263
    .local v0, index:I
    sget-object v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonths:[C

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v2, v3, v4

    .line 264
    .local v2, v:I
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 265
    if-ne v2, p1, :cond_0

    .line 266
    neg-int v1, p1

    .line 268
    .end local v0           #index:I
    .end local v2           #v:I
    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 269
    const/4 v1, 0x1

    .line 270
    :cond_1
    return v1
.end method

.method public static principleTerm(II)I
    .locals 6
    .parameter "y"
    .parameter "m"

    .prologue
    .line 376
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 377
    :cond_0
    const/4 v2, 0x0

    .line 387
    :cond_1
    :goto_0
    return v2

    .line 378
    :cond_2
    const/4 v0, 0x0

    .line 379
    .local v0, index:I
    sget v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseYear:I

    sub-int v3, p0, v3

    add-int/lit8 v1, v3, 0x1

    .line 380
    .local v1, ry:I
    :goto_1
    sget-object v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-lt v1, v3, :cond_3

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    :cond_3
    sget-object v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 383
    .local v2, term:I
    const/16 v3, 0xab

    if-ne v1, v3, :cond_4

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 384
    const/16 v2, 0x15

    .line 385
    :cond_4
    const/16 v3, 0xb5

    if-ne v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 386
    const/16 v2, 0x15

    goto :goto_0
.end method

.method public static sectionalTerm(II)I
    .locals 7
    .parameter "y"
    .parameter "m"

    .prologue
    const/4 v6, 0x4

    .line 359
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 360
    :cond_0
    const/4 v2, 0x0

    .line 372
    :cond_1
    :goto_0
    return v2

    .line 361
    :cond_2
    const/4 v0, 0x0

    .line 362
    .local v0, index:I
    sget v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseYear:I

    sub-int v3, p0, v3

    add-int/lit8 v1, v3, 0x1

    .line 363
    .local v1, ry:I
    :goto_1
    sget-object v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-lt v1, v3, :cond_3

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_3
    sget-object v3, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 366
    .local v2, term:I
    const/16 v3, 0x79

    if-ne v1, v3, :cond_4

    if-ne p1, v6, :cond_4

    .line 367
    const/4 v2, 0x5

    .line 368
    :cond_4
    const/16 v3, 0x84

    if-ne v1, v3, :cond_5

    if-ne p1, v6, :cond_5

    .line 369
    const/4 v2, 0x5

    .line 370
    :cond_5
    const/16 v3, 0xc2

    if-ne v1, v3, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 371
    const/4 v2, 0x6

    goto :goto_0
.end method

.method public static solar2Lunar(III)[I
    .locals 3
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 587
    sget-object v1, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-virtual {v1, p0, p1, p2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 588
    sget-object v1, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeChineseFields()I

    .line 589
    sget-object v1, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    invoke-virtual {v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeSolarTerms()I

    .line 590
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    iget v2, v2, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    iget v2, v2, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->instance:Lcom/zdworks/android/calendartable/util/ChineseCalendar;

    iget v2, v2, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    aput v2, v0, v1

    .line 593
    .local v0, ret:[I
    return-object v0
.end method


# virtual methods
.method public computeChineseFields()I
    .locals 9

    .prologue
    .line 173
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    const/16 v8, 0x76d

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    const/16 v8, 0x834

    if-le v7, v8, :cond_1

    .line 174
    :cond_0
    const/4 v7, 0x1

    .line 213
    :goto_0
    return v7

    .line 175
    :cond_1
    sget v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseYear:I

    .line 176
    .local v6, startYear:I
    sget v5, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseMonth:I

    .line 177
    .local v5, startMonth:I
    sget v4, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseDate:I

    .line 178
    .local v4, startDate:I
    sget v7, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseYear:I

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    .line 179
    sget v7, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseMonth:I

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    .line 180
    sget v7, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseDate:I

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    .line 183
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    const/16 v8, 0x7d0

    if-lt v7, v8, :cond_2

    .line 184
    sget v7, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseYear:I

    add-int/lit8 v6, v7, 0x63

    .line 185
    const/4 v5, 0x1

    .line 186
    const/4 v4, 0x1

    .line 187
    sget v7, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->baseChineseYear:I

    add-int/lit8 v7, v7, 0x63

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    .line 188
    const/16 v7, 0xb

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    .line 189
    const/16 v7, 0x19

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    .line 191
    :cond_2
    const/4 v0, 0x0

    .line 192
    .local v0, daysDiff:I
    move v1, v6

    .local v1, i:I
    :goto_1
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    if-ge v1, v7, :cond_4

    .line 193
    add-int/lit16 v0, v0, 0x16d

    .line 194
    invoke-static {v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    :cond_4
    move v1, v5

    :goto_2
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    if-ge v1, v7, :cond_5

    .line 198
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    invoke-static {v7, v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v7

    add-int/2addr v0, v7

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 200
    :cond_5
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    sub-int/2addr v7, v4

    add-int/2addr v0, v7

    .line 202
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    .line 203
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    .line 204
    .local v2, lastDate:I
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->nextChineseMonth(II)I

    move-result v3

    .line 205
    .local v3, nextMonth:I
    :goto_3
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    if-le v7, v2, :cond_7

    .line 206
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 207
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    .line 208
    :cond_6
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    .line 209
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    sub-int/2addr v7, v2

    iput v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    .line 210
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    .line 211
    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->nextChineseMonth(II)I

    move-result v3

    goto :goto_3

    .line 213
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public computeSolarTerms()I
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    const/16 v1, 0x834

    if-le v0, v1, :cond_1

    .line 352
    :cond_0
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    .line 353
    :cond_1
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v0, v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm(II)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm:I

    .line 354
    iget v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v0, v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm(II)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm:I

    .line 355
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x1

    .line 506
    const-string v4, "*  /  "

    .line 507
    .local v4, str:Ljava/lang/String;
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, gm:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 509
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    :cond_0
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, cm:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    :cond_1
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, gd:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    :cond_2
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, cd:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_3
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    iget v6, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm:I

    if-ne v5, v6, :cond_4

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTermNames:[Ljava/lang/String;

    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 530
    :goto_0
    return-object v4

    .line 521
    :cond_4
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    iget v6, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm:I

    if-ne v5, v6, :cond_5

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTermNames:[Ljava/lang/String;

    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 523
    :cond_5
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    if-ne v5, v7, :cond_6

    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    if-lez v5, :cond_6

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6708"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 525
    :cond_6
    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    if-ne v5, v7, :cond_7

    iget v5, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    if-gez v5, :cond_7

    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonthNames:[Ljava/lang/String;

    iget v7, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    neg-int v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6708"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 528
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getMonthTable()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 454
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    iget v9, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-virtual {p0, v8, v9, v11}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 455
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeChineseFields()I

    .line 456
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeSolarTerms()I

    .line 457
    const/16 v8, 0x8

    new-array v5, v8, [Ljava/lang/String;

    .line 458
    .local v5, table:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 459
    .local v6, title:Ljava/lang/String;
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_0

    .line 460
    const-string v6, "                   "

    .line 463
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->monthNames:[Ljava/lang/String;

    iget v10, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "                   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 465
    const-string v2, "   \u65e5    \u4e00    \u4e8c    \u4e09    \u56db    \u4e94    \u516d "

    .line 466
    .local v2, header:Ljava/lang/String;
    const-string v0, "                                          "

    .line 467
    .local v0, blank:Ljava/lang/String;
    aput-object v6, v5, v12

    .line 468
    aput-object v2, v5, v11

    .line 469
    const/4 v7, 0x2

    .line 470
    .local v7, wk:I
    const-string v4, ""

    .line 471
    .local v4, line:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek:I

    if-ge v3, v8, :cond_1

    .line 472
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    .end local v0           #blank:Ljava/lang/String;
    .end local v2           #header:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #wk:I
    :cond_0
    const-string v6, "                 "

    goto :goto_0

    .line 474
    .restart local v0       #blank:Ljava/lang/String;
    .restart local v2       #header:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #line:Ljava/lang/String;
    .restart local v7       #wk:I
    :cond_1
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    iget v9, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v8, v9}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v1

    .line 475
    .local v1, days:I
    iget v3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    :goto_2
    if-gt v3, v1, :cond_3

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getDateString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->rollUpOneDay()I

    .line 478
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek:I

    if-ne v8, v11, :cond_2

    .line 479
    aput-object v4, v5, v7

    .line 480
    const-string v4, ""

    .line 481
    add-int/lit8 v7, v7, 0x1

    .line 475
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 484
    :cond_3
    iget v3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek:I

    :goto_3
    const/4 v8, 0x7

    if-gt v3, v8, :cond_4

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 487
    :cond_4
    aput-object v4, v5, v7

    .line 488
    add-int/lit8 v3, v7, 0x1

    :goto_4
    array-length v8, v5

    if-ge v3, v8, :cond_5

    .line 489
    aput-object v0, v5, v3

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 491
    :cond_5
    const/4 v3, 0x0

    :goto_5
    array-length v8, v5

    if-ge v3, v8, :cond_6

    .line 492
    aget-object v8, v5, v3

    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 495
    :cond_6
    return-object v5
.end method

.method public getYearTable()[Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0x1b

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 410
    iget v8, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    invoke-virtual {p0, v8, v11, v11}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->setGregorian(III)V

    .line 411
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeChineseFields()I

    .line 412
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->computeSolarTerms()I

    .line 413
    const/16 v8, 0x3a

    new-array v7, v8, [Ljava/lang/String;

    .line 414
    .local v7, table:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u516c\u5386\u5e74\u5386\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getTextLine(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 415
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u519c\u5386\u5e74\u5386\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->stemNames:[Ljava/lang/String;

    iget v10, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, -0x1

    rem-int/lit8 v10, v10, 0xa

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->branchNames:[Ljava/lang/String;

    iget v10, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, -0x1

    rem-int/lit8 v10, v10, 0xc

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->animalNames:[Ljava/lang/String;

    iget v10, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, -0x1

    rem-int/lit8 v10, v10, 0xc

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5e74)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getTextLine(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 419
    const/4 v4, 0x2

    .line 420
    .local v4, ln:I
    const-string v0, "                                                                                    "

    .line 422
    .local v0, blank:Ljava/lang/String;
    const/4 v5, 0x0

    .line 423
    .local v5, mLeft:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 424
    .local v6, mRight:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v8, 0x6

    if-gt v1, v8, :cond_1

    .line 425
    aput-object v0, v7, v4

    .line 426
    add-int/lit8 v4, v4, 0x1

    .line 427
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getMonthTable()[Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getMonthTable()[Ljava/lang/String;

    move-result-object v6

    .line 429
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_0

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, line:Ljava/lang/String;
    aput-object v3, v7, v4

    .line 432
    add-int/lit8 v4, v4, 0x1

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    .end local v3           #line:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v2           #j:I
    :cond_1
    aput-object v0, v7, v4

    .line 436
    add-int/lit8 v4, v4, 0x1

    .line 437
    const-string v8, "##/## - \u516c\u5386\u65e5\u671f/\u519c\u5386\u65e5\u671f\uff0c(*)#\u6708 - (\u95f0)\u519c\u5386\u6708\u7b2c\u4e00\u5929"

    invoke-static {v12, v8}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->getTextLine(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 438
    add-int/lit8 v4, v4, 0x1

    .line 439
    return-object v7
.end method

.method public rollUpOneDay()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 546
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek:I

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek:I

    .line 547
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfYear:I

    .line 548
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    .line 549
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInGregorianMonth(II)I

    move-result v0

    .line 550
    .local v0, days:I
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    if-le v1, v0, :cond_1

    .line 551
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    .line 552
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    .line 553
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    .line 554
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    .line 555
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    .line 556
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfYear:I

    .line 557
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    invoke-static {v1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->isGregorianLeap:Z

    .line 559
    :cond_0
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm(II)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm:I

    .line 560
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-static {v1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm(II)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm:I

    .line 562
    :cond_1
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    .line 563
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v0

    .line 564
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    if-le v1, v0, :cond_2

    .line 565
    iput v3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    .line 566
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-static {v1, v2}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->nextChineseMonth(II)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    .line 567
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    if-ne v1, v3, :cond_2

    .line 568
    iget v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    .line 570
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public setGregorian(III)V
    .locals 2
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 68
    iput p1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    .line 69
    iput p2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    .line 70
    iput p3, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    .line 71
    invoke-static {p1}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->isGregorianLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->isGregorianLeap:Z

    .line 72
    invoke-static {p1, p2, p3}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfYear(III)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfYear:I

    .line 73
    invoke-static {p1, p2, p3}, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek(III)I

    move-result v0

    iput v0, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek:I

    .line 74
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    .line 75
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    .line 76
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    .line 77
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm:I

    .line 78
    iput v1, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm:I

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 393
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gregorian Year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gregorian Month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gregorian Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->gregorianDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Leap Year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->isGregorianLeap:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of Year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of Week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->dayOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chinese Year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heavenly Stem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Earthly Branch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseYear:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chinese Month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chinese Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->chineseDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sectional Term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->sectionalTerm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Principle Term: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zdworks/android/calendartable/util/ChineseCalendar;->principleTerm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
