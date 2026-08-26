.class public Lim/doit/pro/ui/component/chart/BarChartDescItem;
.super Ljava/lang/Object;
.source "BarChartDescItem.java"


# instance fields
.field private fillColor:I

.field private strokeColor:I

.field private strokeWidth:F

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "titleId"    # I
    .param p2, "fillColorId"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->title:Ljava/lang/String;

    .line 14
    invoke-static {p2}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->fillColor:I

    .line 15
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 1
    .param p1, "titleId"    # I
    .param p2, "fillColorId"    # I
    .param p3, "strokeColorId"    # I
    .param p4, "strokeWidth"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/chart/BarChartDescItem;-><init>(II)V

    .line 19
    invoke-static {p3}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->strokeColor:I

    .line 20
    iput p4, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->strokeWidth:F

    .line 21
    return-void
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->fillColor:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->strokeWidth:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 36
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->fillColor:I

    .line 37
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 44
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->strokeColor:I

    .line 45
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 52
    iput p1, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->strokeWidth:F

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/BarChartDescItem;->title:Ljava/lang/String;

    .line 29
    return-void
.end method
