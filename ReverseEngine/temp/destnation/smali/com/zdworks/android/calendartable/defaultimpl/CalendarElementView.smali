.class public Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;
.super Landroid/widget/TextView;
.source "CalendarElementView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x100

.field private static EDGE_PAINT_1:Landroid/graphics/Paint; = null

.field private static EDGE_PAINT_2:Landroid/graphics/Paint; = null

.field public static final INNER_WHITE:I = 0x1000

.field private static MARKER_BITMAP:Landroid/graphics/Bitmap; = null

.field private static MARKER_PAINT:Landroid/graphics/Paint; = null

.field private static MARKER_WIDTH:I = 0x0

.field private static final PATH:Landroid/graphics/Path; = null

.field private static final RECT:Landroid/graphics/Rect; = null

.field public static final RIGHT:I = 0x10

.field public static STYLE_CURMONTH:I = 0x0

.field public static STYLE_FOUCUS:I = 0x0

.field public static STYLE_NO_CURMONTH:I = 0x0

.field public static STYLE_TODAY:I = 0x0

.field public static final TOP:I = 0x1

.field private static colorStylesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private colorSytles:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

.field private context:Landroid/content/Context;

.field private drawEdges:I

.field private lunarFontSize:I

.field public marked:Z

.field private solarFontSize:I

.field private span:Landroid/text/Spannable;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, -0x17e1e2

    const v3, -0x2c2c2d

    const v6, -0xf4964f

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_NO_CURMONTH:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_CURMONTH:I

    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_TODAY:I

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_FOUCUS:I

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->RECT:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->PATH:Landroid/graphics/Path;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    .line 88
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_NO_CURMONTH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    invoke-direct {v2, v3, v3, v3}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_CURMONTH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    const v3, -0xc6c6c7

    const v4, -0x7f7f80

    const v5, -0xea4e7

    invoke-direct {v2, v3, v4, v5}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_TODAY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    invoke-direct {v2, v7, v7, v7}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_FOUCUS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    invoke-direct {v2, v6, v6, v6}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;-><init>(III)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->calendar:Ljava/util/Calendar;

    .line 52
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    sget v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_CURMONTH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    iput-object v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorSytles:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    .line 57
    iput v2, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    .line 58
    iput-boolean v2, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->marked:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->type:I

    .line 174
    iput-object p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->context:Landroid/content/Context;

    .line 175
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->initiate()V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->calendar:Ljava/util/Calendar;

    .line 52
    sget-object v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    sget v2, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->STYLE_CURMONTH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    iput-object v1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorSytles:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    .line 57
    iput v3, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    .line 58
    iput-boolean v3, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->marked:Z

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->type:I

    .line 160
    sget-object v1, Lcom/zdworks/android/calendartable/R$styleable;->CalendarElementView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->solarFontSize:I

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->lunarFontSize:I

    .line 166
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    iput-object p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->context:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->initiate()V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 3
    .parameter "context"
    .parameter "can"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;-><init>(Landroid/content/Context;)V

    .line 180
    iput-object p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->context:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->calendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    invoke-direct {p0}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->initiate()V

    .line 183
    return-void
.end method

.method private initiate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    .line 188
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zdworks/android/calendartable/R$color;->bk5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    :cond_0
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_2:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_2:Landroid/graphics/Paint;

    .line 195
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_2:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zdworks/android/calendartable/R$color;->bk6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    :cond_1
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_PAINT:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_PAINT:Landroid/graphics/Paint;

    .line 202
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 204
    iget-object v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->context:Landroid/content/Context;

    const/high16 v1, 0x4100

    invoke-static {v0, v1}, Lcom/zdworks/android/calendartable/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_WIDTH:I

    .line 207
    :cond_2
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_BITMAP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zdworks/android/calendartable/R$drawable;->event_marker:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_BITMAP:Landroid/graphics/Bitmap;

    .line 212
    :cond_3
    return-void
.end method


# virtual methods
.method public addOneEdge(I)V
    .locals 1
    .parameter "edge"

    .prologue
    .line 290
    iget v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    .line 291
    return-void
.end method

.method public delOneEdge(I)V
    .locals 2
    .parameter "edge"

    .prologue
    .line 286
    iget v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    .line 287
    return-void
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDrawEdges()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    return v0
.end method

.method public isMarked()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->marked:Z

    return v0
.end method

.method public makeContent(Lcom/zdworks/android/calendartable/logic/CellInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x0

    const/16 v8, 0x21

    .line 106
    iget-object v5, p1, Lcom/zdworks/android/calendartable/logic/CellInfo;->date:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, text1:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/zdworks/android/calendartable/logic/CellInfo;->getFestivalText()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, text2:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 109
    iput v9, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->type:I

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 111
    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_0
    :goto_0
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, text1Len:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 121
    .local v3, text2Len:I
    add-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 124
    .local v4, totalLen:I
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorSytles:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->getTextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5, v6, v9, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 127
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->solarFontSize:I

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v5, v6, v9, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 130
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v5, v6, v9, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 133
    iget v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->type:I

    packed-switch v5, :pswitch_data_0

    .line 152
    :goto_1
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->lunarFontSize:I

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v5, v6, v7, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 154
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    invoke-virtual {p0, v5}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 114
    .end local v1           #text1Len:I
    .end local v3           #text2Len:I
    .end local v4           #totalLen:I
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->type:I

    .line 115
    iget-object v5, p1, Lcom/zdworks/android/calendartable/logic/CellInfo;->lunarDate:Lcom/zdworks/android/calendartable/util/LunarDate;

    invoke-virtual {v5}, Lcom/zdworks/android/calendartable/util/LunarDate;->getNameInTable()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 135
    .restart local v1       #text1Len:I
    .restart local v3       #text2Len:I
    .restart local v4       #totalLen:I
    :pswitch_0
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorSytles:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->getLunartextColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v5, v6, v7, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 140
    :pswitch_1
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorSytles:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    invoke-virtual {v7}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;->getFestivalColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v5, v6, v7, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 145
    :pswitch_2
    iget-object v5, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->span:Landroid/text/Spannable;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v5, v6, v7, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 216
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    sget-object v4, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->RECT:Landroid/graphics/Rect;

    .line 219
    .local v4, rect:Landroid/graphics/Rect;
    invoke-super {p0, v4}, Landroid/widget/TextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 221
    .local v6, width:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 222
    .local v0, height:I
    sget-object v3, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->PATH:Landroid/graphics/Path;

    .line 225
    .local v3, path:Landroid/graphics/Path;
    iget v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_0

    .line 227
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 228
    invoke-virtual {v3, v9, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 229
    int-to-float v7, v6

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    sget-object v7, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    :cond_0
    iget v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    and-int/lit8 v7, v7, 0x10

    if-lez v7, :cond_1

    .line 235
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 236
    add-int/lit8 v7, v6, -0x1

    int-to-float v7, v7

    invoke-virtual {v3, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    add-int/lit8 v7, v6, -0x1

    int-to-float v7, v7

    int-to-float v8, v0

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    sget-object v7, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 241
    :cond_1
    iget v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    and-int/lit16 v7, v7, 0x100

    if-lez v7, :cond_2

    .line 243
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 244
    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    invoke-virtual {v3, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    int-to-float v7, v6

    add-int/lit8 v8, v0, -0x1

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    sget-object v7, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_1:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    :cond_2
    iget v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    and-int/lit16 v7, v7, 0x1000

    if-lez v7, :cond_3

    invoke-virtual {p0}, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->isPressed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 252
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 253
    invoke-virtual {v3, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    add-int/lit8 v7, v6, -0x2

    int-to-float v7, v7

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    add-int/lit8 v7, v6, -0x2

    int-to-float v7, v7

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 256
    add-int/lit8 v7, v6, -0x2

    int-to-float v7, v7

    add-int/lit8 v8, v0, -0x1

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    sget-object v7, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->EDGE_PAINT_2:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 260
    :cond_3
    iget-boolean v7, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->marked:Z

    if-eqz v7, :cond_4

    .line 261
    int-to-double v7, v6

    const-wide/high16 v9, 0x3fe8

    mul-double/2addr v7, v9

    double-to-int v1, v7

    .line 262
    .local v1, left:I
    int-to-double v7, v6

    const-wide v9, 0x3fa999999999999aL

    mul-double/2addr v7, v9

    double-to-int v5, v7

    .line 263
    .local v5, top:I
    sget v2, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_WIDTH:I

    .line 264
    .local v2, markerWidth:I
    add-int v7, v1, v2

    add-int v8, v5, v2

    invoke-virtual {v4, v1, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    sget-object v7, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_BITMAP:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    sget-object v9, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->MARKER_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 267
    .end local v1           #left:I
    .end local v2           #markerWidth:I
    .end local v5           #top:I
    :cond_4
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0
    .parameter "calendar"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->calendar:Ljava/util/Calendar;

    .line 275
    return-void
.end method

.method public setColorStyles(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 302
    sget-object v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorStylesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    iput-object v0, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->colorSytles:Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView$ColorStyles;

    .line 303
    return-void
.end method

.method public setDrawEdges(I)V
    .locals 0
    .parameter "drawEdges"

    .prologue
    .line 282
    iput p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->drawEdges:I

    .line 283
    return-void
.end method

.method public setMarked(Z)V
    .locals 0
    .parameter "marked"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/zdworks/android/calendartable/defaultimpl/CalendarElementView;->marked:Z

    .line 299
    return-void
.end method
