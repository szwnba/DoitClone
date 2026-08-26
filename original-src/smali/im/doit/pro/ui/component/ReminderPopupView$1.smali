.class Lim/doit/pro/ui/component/ReminderPopupView$1;
.super Ljava/lang/Object;
.source "ReminderPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/ReminderPopupView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/ReminderPopupView;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/ReminderPopupView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/ReminderPopupView$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupView;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupView$1;->this$0:Lim/doit/pro/ui/component/ReminderPopupView;

    invoke-static {v0}, Lim/doit/pro/ui/component/ReminderPopupView;->access$0(Lim/doit/pro/ui/component/ReminderPopupView;)Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;

    move-result-object v0

    invoke-interface {v0}, Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;->onCompleteClick()V

    .line 49
    return-void
.end method
