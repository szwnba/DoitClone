.class Lim/doit/pro/utils/BoxUtils$1;
.super Ljava/lang/Object;
.source "BoxUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/BoxUtils;->prepareBoxesForView(Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lim/doit/pro/model/Box;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/model/Box;Lim/doit/pro/model/Box;)I
    .locals 2
    .param p1, "box1"    # Lim/doit/pro/model/Box;
    .param p2, "box2"    # Lim/doit/pro/model/Box;

    .prologue
    .line 79
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/enums/BoxType;->getPos()I

    move-result v0

    invoke-virtual {p2}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/enums/BoxType;->getPos()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Box;

    check-cast p2, Lim/doit/pro/model/Box;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/utils/BoxUtils$1;->compare(Lim/doit/pro/model/Box;Lim/doit/pro/model/Box;)I

    move-result v0

    return v0
.end method
