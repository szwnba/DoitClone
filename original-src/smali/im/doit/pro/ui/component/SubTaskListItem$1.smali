.class Lim/doit/pro/ui/component/SubTaskListItem$1;
.super Ljava/lang/Object;
.source "SubTaskListItem.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SubTaskListItem;->registerListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SubTaskListItem;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SubTaskListItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem$1;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 137
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$1;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0, p1}, Lim/doit/pro/ui/component/SubTaskListItem;->access$0(Lim/doit/pro/ui/component/SubTaskListItem;Landroid/widget/EditText;)Z

    .line 138
    return-void
.end method
