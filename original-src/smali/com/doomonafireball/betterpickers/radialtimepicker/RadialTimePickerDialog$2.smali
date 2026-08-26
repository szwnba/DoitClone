.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$2;
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
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->access$1(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;IZZZ)V

    .line 262
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog$2;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTimePickerDialog;->tryVibrate()V

    .line 263
    return-void
.end method
