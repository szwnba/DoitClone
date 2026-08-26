.class Lim/doit/pro/ui/component/SelectDateTimeDialog$1;
.super Ljava/lang/Object;
.source "SelectDateTimeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$1;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$1;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$0(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    .line 105
    return-void
.end method
