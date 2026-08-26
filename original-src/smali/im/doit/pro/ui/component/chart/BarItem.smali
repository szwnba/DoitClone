.class public Lim/doit/pro/ui/component/chart/BarItem;
.super Ljava/lang/Object;
.source "BarItem.java"


# instance fields
.field private data:F

.field private fillColor:I

.field private strokeColor:I

.field private strokeWidth:F

.field private textColor:I


# direct methods
.method public constructor <init>(FII)V
    .locals 1
    .param p1, "data"    # F
    .param p2, "fillColorId"    # I
    .param p3, "textColorId"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarItem;->data:F

    .line 14
    invoke-static {p2}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->fillColor:I

    .line 15
    invoke-static {p3}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->textColor:I

    .line 16
    return-void
.end method

.method public constructor <init>(FIIFI)V
    .locals 1
    .param p1, "data"    # F
    .param p2, "fillColorId"    # I
    .param p3, "textColorId"    # I
    .param p4, "strokeWidth"    # F
    .param p5, "strokeColorId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ui/component/chart/BarItem;-><init>(FII)V

    .line 20
    iput p4, p0, Lim/doit/pro/ui/component/chart/BarItem;->strokeWidth:F

    .line 21
    invoke-static {p5}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->strokeColor:I

    .line 22
    return-void
.end method


# virtual methods
.method public getData()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->data:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->fillColor:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->strokeWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarItem;->textColor:I

    return v0
.end method

.method public setData(F)V
    .locals 0
    .param p1, "data"    # F

    .prologue
    .line 29
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarItem;->data:F

    .line 30
    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 37
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarItem;->fillColor:I

    .line 38
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 45
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarItem;->strokeColor:I

    .line 46
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 53
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarItem;->strokeWidth:F

    .line 54
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 61
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarItem;->textColor:I

    .line 62
    return-void
.end method
