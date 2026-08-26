.class final Lcom/crashlytics/android/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;)V
    .locals 0

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/crashlytics/android/O;->a:Lcom/crashlytics/android/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/crashlytics/android/O;->a:Lcom/crashlytics/android/F;

    iget-object v1, p0, Lcom/crashlytics/android/O;->a:Lcom/crashlytics/android/F;

    sget-object v2, Lcom/crashlytics/android/n;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/F;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/F;->a([Ljava/io/File;)V

    .line 1851
    return-void
.end method
