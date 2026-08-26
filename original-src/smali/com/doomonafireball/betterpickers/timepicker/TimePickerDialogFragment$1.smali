.class Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$1;->this$0:Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$1;->this$0:Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->dismiss()V

    .line 121
    return-void
.end method
