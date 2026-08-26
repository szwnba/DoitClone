.class public Lim/doit/pro/ui/component/chart/BarChartItem;
.super Ljava/lang/Object;
.source "BarChartItem.java"


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/BarItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChartItem;->title:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/BarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChartItem;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChartItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/BarItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarItem;>;"
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/BarChartItem;->items:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/BarChartItem;->title:Ljava/lang/String;

    .line 21
    return-void
.end method
