.class Lim/doit/pro/utils/SortUtils$1;
.super Ljava/lang/Object;
.source "SortUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/SortUtils;->sortInt(Ljava/util/List;Z)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$isDesc:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lim/doit/pro/utils/SortUtils$1;->val$isDesc:Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, -0x1

    .line 66
    .local v0, "diff":I
    :goto_0
    iget-boolean v1, p0, Lim/doit/pro/utils/SortUtils$1;->val$isDesc:Z

    if-eqz v1, :cond_0

    .line 67
    neg-int v0, v0

    .line 68
    :cond_0
    return v0

    .line 65
    .end local v0    # "diff":I
    :cond_1
    if-ne p1, p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/utils/SortUtils$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
