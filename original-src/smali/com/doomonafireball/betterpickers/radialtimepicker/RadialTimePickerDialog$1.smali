.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$1;
.super Ljava/lang/Object;
.source "RadialTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$1;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$1;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-static {v0, v1, v2, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$1(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;IZZZ)V

    .line 255
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$1;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->tryVibrate()V

    .line 256
    return-void
.end method
