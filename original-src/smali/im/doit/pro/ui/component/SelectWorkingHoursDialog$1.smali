.class Lim/doit/pro/ui/component/SelectWorkingHoursDialog$1;
.super Ljava/lang/Object;
.source "SelectWorkingHoursDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectWorkingHoursDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$1;->this$0:Lim/doit/pro/ui/component/SelectWorkingHoursDialog;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$1;->this$0:Lim/doit/pro/ui/component/SelectWorkingHoursDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->access$0(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)V

    .line 58
    return-void
.end method
