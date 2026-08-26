.class final Lcom/crashlytics/android/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/x;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/x;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/crashlytics/android/z;->a:Lcom/crashlytics/android/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/crashlytics/android/z;->a:Lcom/crashlytics/android/x;

    iget-object v0, v0, Lcom/crashlytics/android/x;->a:Lcom/crashlytics/android/D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/D;->a(Z)V

    .line 776
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 777
    return-void
.end method
