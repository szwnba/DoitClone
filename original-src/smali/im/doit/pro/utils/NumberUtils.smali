.class public Lim/doit/pro/utils/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 14
    :goto_0
    return v1

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static setScale(IF)F
    .locals 4
    .param p0, "scale"    # I
    .param p1, "value"    # F

    .prologue
    .line 19
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 20
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 21
    .local v1, "result":F
    return v1
.end method
