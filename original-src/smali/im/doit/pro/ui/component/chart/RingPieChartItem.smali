.class public Lim/doit/pro/ui/component/chart/RingPieChartItem;
.super Ljava/lang/Object;
.source "RingPieChartItem.java"


# instance fields
.field private color:I

.field private name:Ljava/lang/String;

.field private percentage:F


# direct methods
.method public constructor <init>(IFI)V
    .locals 1
    .param p1, "nameId"    # I
    .param p2, "percentage"    # F
    .param p3, "colorId"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->name:Ljava/lang/String;

    .line 12
    iput p2, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->percentage:F

    .line 13
    invoke-static {p3}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->color:I

    .line 14
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->color:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->percentage:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 29
    iput p1, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->color:I

    .line 30
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPercentage(F)V
    .locals 0
    .param p1, "percentage"    # F

    .prologue
    .line 21
    iput p1, p0, Lim/doit/pro/ui/component/chart/RingPieChartItem;->percentage:F

    .line 22
    return-void
.end method
