.class Lim/doit/pro/utils/AlertDialogUtils$12;
.super Ljava/lang/Object;
.source "AlertDialogUtils.java"

# interfaces
.implements Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/AlertDialogUtils;->showListViewMoveDailog(Landroid/app/Activity;Lim/doit/pro/activity/listview/ListViewAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/utils/AlertDialogUtils$12;->val$listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 404
    iget-object v0, p0, Lim/doit/pro/utils/AlertDialogUtils$12;->val$listAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1, p2}, Lim/doit/pro/activity/listview/ListViewAdapter;->setSelectedItemsAttribute(Lim/doit/pro/model/enums/Attribute;Ljava/util/Calendar;)V

    .line 405
    return-void
.end method
