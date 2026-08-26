.class Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 342
    iput-object p1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    .line 344
    iput-object p3, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 345
    return-void
.end method


# virtual methods
.method public compareTo(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;)I
    .locals 2
    .param p1, "other"    # Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;

    .prologue
    .line 350
    iget v0, p1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;

    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->compareTo(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
