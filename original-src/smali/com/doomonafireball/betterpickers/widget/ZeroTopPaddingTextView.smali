.class public Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;
.super Landroid/widget/TextView;
.source "ZeroTopPaddingTextView.java"


# static fields
.field private static final BOLD_FONT_BOTTOM_PADDING_RATIO:F = 0.208f

.field private static final BOLD_FONT_PADDING_RATIO:F = 0.208f

.field private static final NORMAL_FONT_BOTTOM_PADDING_RATIO:F = 0.25f

.field private static final NORMAL_FONT_PADDING_RATIO:F = 0.328f

.field private static final PRE_ICS_BOTTOM_PADDING_RATIO:F = 0.233f

.field private static final SAN_SERIF_BOLD:Landroid/graphics/Typeface;

.field private static final SAN_SERIF_CONDENSED_BOLD:Landroid/graphics/Typeface;


# instance fields
.field private decimalSeperator:Ljava/lang/String;

.field private mPaddingRight:I

.field private timeSeperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    const-string v0, "san-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    .line 43
    const-string v0, "sans-serif-condensed"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->SAN_SERIF_CONDENSED_BOLD:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v1, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->mPaddingRight:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->decimalSeperator:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->timeSeperator:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->init()V

    .line 61
    invoke-virtual {p0, v1}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setIncludeFontPadding(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 63
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->decimalSeperator:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->timeSeperator:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public setPaddingRight(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->mPaddingRight:I

    .line 108
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->updatePadding()V

    .line 109
    return-void
.end method

.method public updatePadding()V
    .locals 7

    .prologue
    .line 71
    const v1, 0x3ea7ef9e    # 0.328f

    .line 72
    .local v1, "paddingRatio":F
    const/high16 v0, 0x3e800000    # 0.25f

    .line 73
    .local v0, "bottomPaddingRatio":F
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const v1, 0x3e54fdf4    # 0.208f

    .line 75
    const v0, 0x3e54fdf4    # 0.208f

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->SAN_SERIF_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const v1, 0x3e54fdf4    # 0.208f

    .line 79
    const v0, 0x3e54fdf4    # 0.208f

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sget-object v3, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->SAN_SERIF_CONDENSED_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const v1, 0x3e54fdf4    # 0.208f

    .line 83
    const v0, 0x3e54fdf4    # 0.208f

    .line 85
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->decimalSeperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->timeSeperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    :cond_3
    const v0, 0x3e6e978d    # 0.233f

    .line 93
    :cond_4
    const/4 v2, 0x0

    neg-float v3, v1

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTextSize()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->mPaddingRight:I

    .line 94
    neg-float v5, v0

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTextSize()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 93
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setPadding(IIII)V

    .line 95
    return-void
.end method

.method public updatePaddingForBoldDate()V
    .locals 7

    .prologue
    .line 98
    const v1, 0x3e54fdf4    # 0.208f

    .line 99
    .local v1, "paddingRatio":F
    const v0, 0x3e54fdf4    # 0.208f

    .line 102
    .local v0, "bottomPaddingRatio":F
    const/4 v2, 0x0

    neg-float v3, v1

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTextSize()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->mPaddingRight:I

    .line 103
    neg-float v5, v0

    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->getTextSize()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 102
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/doomonafireball/betterpickers/widget/ZeroTopPaddingTextView;->setPadding(IIII)V

    .line 104
    return-void
.end method
